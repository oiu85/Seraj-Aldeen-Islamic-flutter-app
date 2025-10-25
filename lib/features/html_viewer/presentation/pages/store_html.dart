import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:html/parser.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../config/appconfig/app_colors.dart';
import '../../../../gen/fonts.gen.dart';

class HtmlExtractorPage extends StatefulWidget {
  final String? htmlResponse;

  HtmlExtractorPage({required this.htmlResponse});

  @override
  _HtmlExtractorPageState createState() => _HtmlExtractorPageState();
}

class _HtmlExtractorPageState extends State<HtmlExtractorPage> {
  String extractedText = "";
  
  @override
  void initState() {
    super.initState();
    extractedText = extractTextWithFormatting(widget.htmlResponse!);
  }
  
  /// Launch URL when link is tapped
  Future<void> _launchUrl(String? url) async {
    if (url == null || url.isEmpty) return;
    
    try {
      // Convert relative URLs to absolute URLs
      String absoluteUrl = url;
      
      // Check if URL is relative (doesn't start with http:// or https://)
      if (!url.startsWith('http://') && !url.startsWith('https://')) {
        // Website base URL for links (different from API base URL)
        const String webBaseUrl = 'https://www.srajalden.com';
        
        // Handle different types of relative URLs
        if (url.startsWith('/')) {
          // Absolute path (e.g., /files/book/book1.pdf)
          absoluteUrl = '$webBaseUrl$url';
        } else {
          // Relative path (e.g., index.php?page=...)
          absoluteUrl = '$webBaseUrl/$url';
        }
        
        debugPrint('Converted relative URL: $url → $absoluteUrl');
      }
      
      final Uri uri = Uri.parse(absoluteUrl);
      if (await canLaunchUrl(uri)) {
        await launchUrl(
          uri,
          mode: LaunchMode.externalApplication,
        );
      } else {
        // Show error message if URL cannot be launched
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                'لا يمكن فتح الرابط',
                style: TextStyle(fontFamily: FontFamily.tajawal),
              ),
              backgroundColor: Colors.red,
              duration: const Duration(seconds: 2),
            ),
          );
        }
      }
    } catch (e) {
      debugPrint('Error launching URL: $url - $e');
      // Show error message on exception
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'خطأ في فتح الرابط',
              style: TextStyle(fontFamily: FontFamily.tajawal),
            ),
            backgroundColor: Colors.red,
            duration: const Duration(seconds: 2),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HTML View", style: TextStyle(fontFamily: FontFamily.amiri)),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Html(
                data: widget.htmlResponse,
                onLinkTap: (url, attributes, element) {
                  _launchUrl(url);
                },
                style: {
            "h1": Style(
              fontSize: FontSize(24),
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
            "p": Style(
              fontSize: FontSize(18),
              color: Colors.red,
              lineHeight: LineHeight(1.5),
            ),
            "span": Style(
              fontSize: FontSize(18),
              color: Colors.black,
              fontFamily: FontFamily.tajawal,
              // fontWeight: FontWeight.w600,
              // letterSpacing: 1.2,
              // wordSpacing: 1.5,
              lineHeight: LineHeight(2),
              //? For Adding Shadow To The Text :
              // textShadow: [
              //   Shadow(
              //       blurRadius: 5.0,
              //       color: Colors.grey.withOpacity(0.6),
              //       offset: Offset(2.0, 2.0)
              //   ),
              // ],
              // backgroundColor: Colors.yellow.withOpacity(0.1),
               // padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 2.0),
              // borderRadius: BorderRadius.circular(8.0), // حواف دائرية
               textTransform: TextTransform.capitalize,
              textAlign: TextAlign.start,
            ),
          }
              ),
            ),
          ),
        ],
      ),
    );
  }


  String extractTextWithFormatting(String html) {
    var document = parse(html);
    return document.body?.text ?? "";
  }
}
