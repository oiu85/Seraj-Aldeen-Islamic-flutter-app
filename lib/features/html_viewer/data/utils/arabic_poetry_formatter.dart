import 'package:html/parser.dart' as html_parser;
import 'package:html/dom.dart' as dom;

/// Utility class to detect and format Arabic poetry verses in HTML content
/// 
/// Arabic poetry has a specific structure with two hemistichs (شطر) per line:
/// - First hemistich (الشطر الأول) on the right
/// - Second hemistich (الشطر الثاني) on the left
/// 
/// This formatter ensures proper display by:
/// 1. Detecting poetry patterns (centered text with multiple spaces)
/// 2. Converting to proper RTL flex layout
/// 3. Preventing line wrapping within verses
class ArabicPoetryFormatter {
  
  /// Patterns that indicate poetry content
  static final List<RegExp> _poetryIndicators = [
    // Multiple consecutive spaces (common in poetry formatting)
    RegExp(r'\s{5,}'),
    // Text-align center with poetry-like content
    RegExp(r'text-align:\s*center', caseSensitive: false),
    // Common poetry markers
    RegExp(r'(ثم أنشد|أنشد|قال الشاعر|من الشعر|البيت|الأبيات)'),
  ];
  
  /// Format HTML content to properly display Arabic poetry
  static String formatArabicPoetry(String htmlContent) {
    if (htmlContent.isEmpty) return htmlContent;
    
    final document = html_parser.parse(htmlContent);
    final body = document.body;
    
    if (body == null) return htmlContent;
    
    // Find all paragraph elements
    final paragraphs = body.querySelectorAll('p');
    
    for (var paragraph in paragraphs) {
      _processParagraph(paragraph);
    }
    
    return body.outerHtml;
  }
  
  /// Process a single paragraph to detect and format poetry
  static void _processParagraph(dom.Element paragraph) {
    final text = paragraph.text;
    final style = paragraph.attributes['style'] ?? '';
    
    // Check if this paragraph contains poetry
    if (!_isPoeticContent(text, style)) {
      return;
    }
    
    // Get the inner HTML to preserve formatting
    final innerHtml = paragraph.innerHtml;
    
    // Check if it's already formatted (has our custom class)
    if (innerHtml.contains('poetry-verse-container')) {
      return;
    }
    
    // Split by multiple spaces to get hemistichs
    final verses = _extractVerses(innerHtml);
    
    if (verses.isEmpty) {
      return;
    }
    
    // Create formatted poetry HTML
    final formattedHtml = _createPoetryHtml(verses);
    
    // Replace paragraph content
    paragraph.innerHtml = formattedHtml;
    
    // Add poetry class to paragraph
    final existingClass = paragraph.attributes['class'] ?? '';
    paragraph.attributes['class'] = existingClass.isEmpty 
        ? 'poetry-paragraph' 
        : '$existingClass poetry-paragraph';
  }
  
  /// Check if content is likely poetry
  static bool _isPoeticContent(String text, String style) {
    // Check for poetry indicators
    for (var pattern in _poetryIndicators) {
      if (pattern.hasMatch(text) || pattern.hasMatch(style)) {
        return true;
      }
    }
    
    // Check if text has multiple spaces (common in poetry)
    if (text.contains(RegExp(r'\s{5,}'))) {
      return true;
    }
    
    // Check if text is centered and has typical poetry length
    if (style.contains('text-align') && 
        style.contains('center') && 
        text.length > 20 && 
        text.length < 200) {
      return true;
    }
    
    return false;
  }
  
  /// Extract verses from HTML content
  static List<PoetryVerse> _extractVerses(String html) {
    final verses = <PoetryVerse>[];
    
    // Remove HTML tags to get clean text
    final cleanText = html.replaceAll(RegExp(r'<[^>]*>'), '');
    
    // Split by multiple spaces (typically 5+ spaces separate hemistichs)
    final parts = cleanText.split(RegExp(r'\s{5,}'));
    
    if (parts.length >= 2) {
      // We have hemistichs
      for (int i = 0; i < parts.length - 1; i += 2) {
        if (i + 1 < parts.length) {
          final firstHemistich = parts[i].trim();
          final secondHemistich = parts[i + 1].trim();
          
          if (firstHemistich.isNotEmpty && secondHemistich.isNotEmpty) {
            verses.add(PoetryVerse(
              firstHemistich: firstHemistich,
              secondHemistich: secondHemistich,
            ));
          }
        }
      }
    } else {
      // Single line, might be a single hemistich or title
      final trimmed = cleanText.trim();
      if (trimmed.isNotEmpty && trimmed.length < 150) {
        verses.add(PoetryVerse(
          firstHemistich: trimmed,
          secondHemistich: null,
        ));
      }
    }
    
    return verses;
  }
  
  /// Create formatted HTML for poetry verses
  static String _createPoetryHtml(List<PoetryVerse> verses) {
    final buffer = StringBuffer();
    
    buffer.write('<div class="poetry-verse-container">');
    
    for (var verse in verses) {
      if (verse.secondHemistich != null) {
        // Two hemistichs - create table for better control
        buffer.write('<table class="poetry-verse-line" style="width: 100%; margin: 8px 0; border-collapse: collapse; direction: rtl;">');
        buffer.write('<tr>');
        
        // First hemistich (right side)
        buffer.write('<td class="poetry-hemistich-first" style="');
        buffer.write('width: 48%; ');
        buffer.write('text-align: right; ');
        buffer.write('padding: 4px 8px; ');
        buffer.write('vertical-align: top; ');
        buffer.write('font-size: 0.95em; '); // Slightly smaller
        buffer.write('">');
        buffer.write(verse.firstHemistich);
        buffer.write('</td>');
        
        // Spacer
        buffer.write('<td style="width: 4%; text-align: center;"></td>');
        
        // Second hemistich (left side)
        buffer.write('<td class="poetry-hemistich-second" style="');
        buffer.write('width: 48%; ');
        buffer.write('text-align: left; ');
        buffer.write('padding: 4px 8px; ');
        buffer.write('vertical-align: top; ');
        buffer.write('font-size: 0.95em; '); // Slightly smaller
        buffer.write('">');
        buffer.write(verse.secondHemistich);
        buffer.write('</td>');
        
        buffer.write('</tr>');
        buffer.write('</table>');
      } else {
        // Single hemistich or title - centered
        buffer.write('<div class="poetry-verse-single" style="');
        buffer.write('text-align: center; ');
        buffer.write('width: 100%; ');
        buffer.write('margin: 8px 0; ');
        buffer.write('font-weight: bold; ');
        buffer.write('">');
        buffer.write(verse.firstHemistich);
        buffer.write('</div>');
      }
    }
    
    buffer.write('</div>');
    
    return buffer.toString();
  }
  
  /// Detect if HTML content contains poetry and needs formatting
  static bool containsPoetry(String htmlContent) {
    if (htmlContent.isEmpty) return false;
    
    for (var pattern in _poetryIndicators) {
      if (pattern.hasMatch(htmlContent)) {
        return true;
      }
    }
    
    return false;
  }
  
  /// Format poetry with responsive font sizing
  static String formatWithResponsiveStyling(
    String htmlContent, {
    double baseFontSize = 18.0,
    String fontFamily = 'Amiri',
    bool isDarkMode = false,
  }) {
    String formatted = formatArabicPoetry(htmlContent);
    
    // Add responsive styling
    final textColor = isDarkMode ? '#E0E0E0' : '#212121';
    
    formatted = formatted.replaceAll(
      'class="poetry-verse-container"',
      'class="poetry-verse-container" data-font-size="$baseFontSize" data-font-family="$fontFamily" data-text-color="$textColor"',
    );
    
    return formatted;
  }
}

/// Represents a single poetry verse with two hemistichs
class PoetryVerse {
  final String firstHemistich;
  final String? secondHemistich;
  
  const PoetryVerse({
    required this.firstHemistich,
    this.secondHemistich,
  });
  
  bool get isSingleLine => secondHemistich == null;
  
  @override
  String toString() {
    if (secondHemistich != null) {
      return '$firstHemistich     $secondHemistich';
    }
    return firstHemistich;
  }
}

