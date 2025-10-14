/// Utility class to replace remote image URLs in HTML with local asset paths
class HtmlImageReplacer {
  /// Replaces image URLs in HTML content with local asset paths
  /// 
  /// This method finds all <img> tags in the HTML and replaces their src attributes
  /// with local asset paths if they match the pattern
  /// 
  /// Example:
  /// Input: <img src="/other_files/Image/pic_006.jpg" />
  /// Output: <img src="assets/bio_html_images/pic_006.jpg" />
  static String replaceImageUrls(String htmlContent, {
    String assetPath = 'assets/bio_html_images/',
    String urlPattern = r'/other_files/Image/',
  }) {
    if (htmlContent.isEmpty) return htmlContent;
    
    // Regular expression to match img tags with src attributes
    final imgRegex = RegExp(
      r'<img[^>]+src=["' "'" r']([^"' "'" r']+)["' "'" r'][^>]*>',
      multiLine: true,
      caseSensitive: false,
    );
    
    // Find all img tags and replace their src
    final replacedHtml = htmlContent.replaceAllMapped(imgRegex, (match) {
      final fullImgTag = match.group(0)!;
      final srcValue = match.group(1);
      
      if (srcValue == null || srcValue.isEmpty) {
        return fullImgTag;
      }
      
      // Extract filename from the path
      // e.g., /other_files/Image/pic_006.jpg -> pic_006.jpg
      final fileName = srcValue.split('/').last;
      
      // Check if this is a remote URL that needs to be replaced
      if (srcValue.contains(urlPattern) || 
          srcValue.startsWith('/other_files/') ||
          srcValue.contains('/Image/')) {
        // Replace with local asset path
        final newSrc = '$assetPath$fileName';
        final newImgTag = fullImgTag.replaceFirst(srcValue, newSrc);
        return newImgTag;
      }
      
      return fullImgTag;
    });
    
    return replacedHtml;
  }
  
  /// Replaces specific image URL patterns with local asset paths
  /// 
  /// This is a more flexible version that accepts a map of patterns to replace
  static String replaceWithCustomPatterns(
    String htmlContent,
    Map<String, String> replacementMap,
  ) {
    String result = htmlContent;
    
    replacementMap.forEach((pattern, replacement) {
      result = result.replaceAll(pattern, replacement);
    });
    
    return result;
  }
  
  /// Extracts all image URLs from HTML content
  static List<String> extractImageUrls(String htmlContent) {
    final imgRegex = RegExp(
      r'<img[^>]+src=["' "'" r']([^"' "'" r']+)["' "'" r']',
      multiLine: true,
      caseSensitive: false,
    );
    
    final matches = imgRegex.allMatches(htmlContent);
    return matches
        .map((match) => match.group(1))
        .where((url) => url != null && url.isNotEmpty)
        .cast<String>()
        .toList();
  }
  
  /// Extracts images and replaces them with local paths, returns both HTML and image list
  static HtmlImageResult extractAndReplaceImages(
    String htmlContent, {
    String assetPath = 'assets/bio_html_images/',
    bool removeImagesFromHtml = false,
  }) {
    if (htmlContent.isEmpty) {
      return HtmlImageResult(htmlContent: htmlContent, imageUrls: []);
    }
    
    final List<String> imageUrls = [];
    int imageCounter = 0;
    
    final imgRegex = RegExp(
      r'<img[^>]+src=["' "'" r']([^"' "'" r']+)["' "'" r'][^>]*>',
      multiLine: true,
      caseSensitive: false,
    );
    
    String processedHtml = htmlContent;
    
    // Extract images and replace/remove them
    processedHtml = htmlContent.replaceAllMapped(imgRegex, (match) {
      final fullImgTag = match.group(0)!;
      final srcValue = match.group(1);
      
      if (srcValue == null || srcValue.isEmpty) {
        return fullImgTag;
      }
      
      // Extract filename from the path
      final fileName = srcValue.split('/').last;
      
      // Check if this is a remote URL that needs to be replaced
      if (srcValue.contains('/other_files/') ||
          srcValue.startsWith('/other_files/') ||
          srcValue.contains('/Image/')) {
        // Create local asset path
        final localPath = '$assetPath$fileName';
        imageUrls.add(localPath);
        imageCounter++;
        
        if (removeImagesFromHtml) {
          // Replace with centered Arabic text placeholder
          return '<p style="text-align:center; margin:16px 0;"><strong>صورة ($imageCounter)</strong></p>';
        } else {
          // Replace with local asset path
          return fullImgTag.replaceFirst(srcValue, localPath);
        }
      }
      
      // For other images, keep as is
      imageUrls.add(srcValue);
      imageCounter++;
      if (removeImagesFromHtml) {
        return '<p style="text-align:center; margin:16px 0;"><strong>صورة ($imageCounter)</strong></p>';
      }
      return fullImgTag;
    });
    
    // Clean up any excessive whitespace or empty paragraphs left by image removal
    if (removeImagesFromHtml) {
      // Remove empty paragraphs
      processedHtml = processedHtml.replaceAll(RegExp(r'<p[^>]*>\s*</p>'), '');
      // Remove multiple consecutive line breaks
      processedHtml = processedHtml.replaceAll(RegExp(r'(<br\s*/?>){3,}'), '<br/><br/>');
      // Remove whitespace-only content between tags
      processedHtml = processedHtml.replaceAll(RegExp(r'>\s+<'), '><');
    }
    
    return HtmlImageResult(
      htmlContent: processedHtml,
      imageUrls: imageUrls,
    );
  }
}

/// Result class containing processed HTML and extracted image URLs
class HtmlImageResult {
  final String htmlContent;
  final List<String> imageUrls;
  
  const HtmlImageResult({
    required this.htmlContent,
    required this.imageUrls,
  });
}

