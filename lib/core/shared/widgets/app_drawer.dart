import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/device_type.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';
import 'package:seraj_aldean_flutter_app/gen/fonts.gen.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.only(top: ScreenUtilRes.height(20)),
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.close_outlined,
              size: context.deviceValue(
                mobile: 24.0,
                tablet: 30.0,
                desktop: 36.0,
              ),
            ),
          ),
        ),
        Expanded(
          child: ListView(
            padding: EdgeInsets.symmetric(vertical: ScreenUtilRes.height(10)),
          ),
        ),
      ],
    );
  }
}

Widget buildDrawerItem(BuildContext context, String title, String imagePath, VoidCallback onTap) {
  // Responsive sizes based on device type
  final iconSize = context.deviceValue(
    mobile: 30.0,
    tablet: 38.0,
    desktop: 45.0,
  );

  final fontSize = context.deviceValue(
    mobile: 18.0,
    tablet: 22.0,
    desktop: 26.0,
  );

  return Padding(
    padding: EdgeInsets.symmetric(
      vertical: ScreenUtilRes.height(12),
      horizontal: ScreenUtilRes.width(30),
    ),
    child: InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(ScreenUtilRes.radius(8)),
      child: Row(
        children: [
          Image.asset(
            imagePath,
            width: ScreenUtilRes.width(iconSize),
            height: ScreenUtilRes.height(iconSize),
          ),
          SizedBox(width: ScreenUtilRes.width(10)),
          Expanded(
            child: _buildMarqueeText(
              context,
              title,
              fontSize,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget _buildMarqueeText(BuildContext context, String text, double fontSize) {
  // Calculate available width (approximate)
  final screenWidth = MediaQuery.of(context).size.width;
  final availableWidth = screenWidth - ScreenUtilRes.width(100); // Account for icon and padding
  
  // Create a text painter to measure text width
  final textPainter = TextPainter(
    text: TextSpan(
      text: text,
      style: TextStyle(
        fontFamily: FontFamily.tajawal,
        fontSize: ScreenUtilRes.fontSize(fontSize),
      ),
    ),
    textDirection: TextDirection.rtl,
  );
  textPainter.layout();
  
  // If text fits in available space, show normal text
  if (textPainter.width <= availableWidth) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: FontFamily.tajawal,
        fontSize: ScreenUtilRes.fontSize(fontSize),
      ),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
  
  // If text is too long, use marquee
  return SizedBox(
    height: ScreenUtilRes.height(30), // Fixed height for consistent layout
    child: Marquee(
      text: text,
      style: TextStyle(
        fontFamily: FontFamily.tajawal,
        fontSize: ScreenUtilRes.fontSize(fontSize),
      ),
      scrollAxis: Axis.horizontal,
      crossAxisAlignment: CrossAxisAlignment.center,
      blankSpace: 20.0,
      velocity: 30.0,
      pauseAfterRound: Duration(seconds: 1),
      startPadding: 10.0,
      accelerationDuration: Duration(seconds: 1),
      accelerationCurve: Curves.linear,
      decelerationDuration: Duration(milliseconds: 500),
      decelerationCurve: Curves.easeOut,
    ),
  );
}