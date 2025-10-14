import 'package:flutter/material.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';
import 'package:seraj_aldean_flutter_app/config/appconfig/app_colors.dart';
import 'package:seraj_aldean_flutter_app/gen/fonts.gen.dart';
import 'package:seraj_aldean_flutter_app/gen/assets.gen.dart';

/// Social Networks Expandable FAB Widget
/// Displays an expandable floating action button that shows social media links vertically
class SocialNetworksExpandableFab extends StatelessWidget {
  final Color? openButtonColor;
  final Color? closeButtonColor;
  final double? distance;
  final double? iconSize;

  const SocialNetworksExpandableFab({
    super.key,
    this.openButtonColor,
    this.closeButtonColor,
    this.distance,
    this.iconSize,
  });

  Future<void> _launchUrl(BuildContext context, String url, String platformName) async {
    try {
      final uri = Uri.parse(url);
      if (await canLaunchUrl(uri)) {
        await launchUrl(
          uri,
          mode: LaunchMode.externalApplication,
        );
      } else {
        if (context.mounted) {
          _showErrorSnackbar(context, 'لا يمكن فتح رابط $platformName');
        }
      }
    } catch (e) {
      if (context.mounted) {
        _showErrorSnackbar(context, 'حدث خطأ أثناء فتح الرابط');
      }
    }
  }

  void _showErrorSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: TextStyle(
            fontFamily: FontFamily.tajawal,
            fontSize: 14.f,
          ),
        ),
        backgroundColor: Colors.red,
        duration: Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = iconSize ?? 48.w;

    return ExpandableFab(
      distance: distance ?? 70.0,
      type: ExpandableFabType.up,
      pos: ExpandableFabPos.right,
      childrenAnimation: ExpandableFabAnimation.rotate,
      overlayStyle: ExpandableFabOverlayStyle(
        color: AppColors.black.withValues(alpha: 0.5),
        blur: 5,
      ),
      openButtonBuilder: RotateFloatingActionButtonBuilder(
        child: Icon(Icons.share, color: AppColors.white),
        fabSize: ExpandableFabSize.regular,
        backgroundColor: openButtonColor ?? AppColors.primary,
        shape: const CircleBorder(),
      ),
      closeButtonBuilder: DefaultFloatingActionButtonBuilder(
        child: Icon(Icons.close, color: AppColors.white),
        backgroundColor: closeButtonColor ?? AppColors.primary,
        shape: const CircleBorder(),
      ),
      children: [
        // YouTube
        _buildSocialButton(
          context,
          imagePath: Assets.images.youtube.path,
          url: 'https://www.youtube.com/@srajaldencomm',
          platformName: 'يوتيوب',
          size: size,
        ),
        
        // Instagram
        _buildSocialButton(
          context,
          imagePath: Assets.images.instagram.path,
          url: 'https://www.instagram.com/srajaldencom',
          platformName: 'انستقرام',
          size: size,
        ),
        
        // Facebook
        _buildSocialButton(
          context,
          imagePath: Assets.images.facebook.path,
          url: 'https://www.facebook.com/srajaldencom/',
          platformName: 'فيسبوك',
          size: size,
        ),
        
        // WhatsApp
        _buildSocialButton(
          context,
          imagePath: Assets.images.whatsapp.path,
          url: 'https://whatsapp.com/channel/0029VaAcfpRCXC3Te0dLDL0Z',
          platformName: 'واتساب',
          size: size,
        ),
        
        // Twitter
        _buildSocialButton(
          context,
          imagePath: Assets.images.twitter.path,
          url: 'https://twitter.com/srajaldencom',
          platformName: 'تويتر',
          size: size,
        ),
        
        // Telegram
        _buildSocialButton(
          context,
          imagePath: Assets.images.telegram.path,
          url: 'https://t.me/srajaldencom',
          platformName: 'تلغرام',
          size: size,
        ),
      ],
    );
  }

  Widget _buildSocialButton(
    BuildContext context, {
    required String imagePath,
    required String url,
    required String platformName,
    required double size,
  }) {
    return InkWell(
      onTap: () => _launchUrl(context, url, platformName),
      borderRadius: BorderRadius.circular(size / 2),
      child: Container(
        width: size,
        height: size,
        padding: EdgeInsets.all(size * 0.15),
        child: Image.asset(
          imagePath,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}

/// Alternative: Social Networks with Labels
/// Displays social media buttons with text labels next to them
class SocialNetworksExpandableFabWithLabels extends StatelessWidget {
  final Color? openButtonColor;
  final Color? closeButtonColor;
  final double? distance;
  final double? iconSize;

  const SocialNetworksExpandableFabWithLabels({
    super.key,
    this.openButtonColor,
    this.closeButtonColor,
    this.distance,
    this.iconSize,
  });

  Future<void> _launchUrl(BuildContext context, String url, String platformName) async {
    try {
      final uri = Uri.parse(url);
      if (await canLaunchUrl(uri)) {
        await launchUrl(
          uri,
          mode: LaunchMode.externalApplication,
        );
      } else {
        if (context.mounted) {
          _showErrorSnackbar(context, 'لا يمكن فتح رابط $platformName');
        }
      }
    } catch (e) {
      if (context.mounted) {
        _showErrorSnackbar(context, 'حدث خطأ أثناء فتح الرابط');
      }
    }
  }

  void _showErrorSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: TextStyle(
            fontFamily: FontFamily.tajawal,
            fontSize: 14.f,
          ),
        ),
        backgroundColor: Colors.red,
        duration: Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = iconSize ?? 40.w;

    return ExpandableFab(
      distance: distance ??10,
      type: ExpandableFabType.up,
      pos: ExpandableFabPos.right,
      childrenAnimation: ExpandableFabAnimation.none,
      overlayStyle: ExpandableFabOverlayStyle(
        color: AppColors.white.withValues(alpha: 0.9),
      ),
      openButtonBuilder: RotateFloatingActionButtonBuilder(
        child: Icon(Icons.share, color: AppColors.white),
        fabSize: ExpandableFabSize.regular,
        foregroundColor: AppColors.white,
        backgroundColor: openButtonColor ?? AppColors.primary,
        shape: const CircleBorder(),
      ),
      closeButtonBuilder: DefaultFloatingActionButtonBuilder(
        child: Icon(Icons.close, color: AppColors.white),
        fabSize: ExpandableFabSize.regular,
        foregroundColor: AppColors.white,
        backgroundColor: closeButtonColor ?? AppColors.primary,
        shape: const CircleBorder(),
      ),
      children: [
        // YouTube
        _buildSocialButtonWithLabel(
          context,
          imagePath: Assets.images.youtube.path,
          url: 'https://www.youtube.com/@srajaldencomm',
          label: 'يوتيوب الشيخ',
          size: size,
        ),
        
        // Instagram
        _buildSocialButtonWithLabel(
          context,
          imagePath: Assets.images.instagram.path,
          url: 'https://www.instagram.com/srajaldencom',
          label: 'انستقرام الشيخ',
          size: size,
        ),
        
        // Facebook
        _buildSocialButtonWithLabel(
          context,
          imagePath: Assets.images.facebook.path,
          url: 'https://www.facebook.com/srajaldencom/',
          label: 'فيسبوك الشيخ',
          size: size,
        ),
        
        // WhatsApp
        _buildSocialButtonWithLabel(
          context,
          imagePath: Assets.images.whatsapp.path,
          url: 'https://whatsapp.com/channel/0029VaAcfpRCXC3Te0dLDL0Z',
          label: 'واتساب الشيخ',
          size: size,
        ),
        
        // Twitter
        _buildSocialButtonWithLabel(
          context,
          imagePath: Assets.images.twitter.path,
          url: 'https://twitter.com/srajaldencom',
          label: 'تويتر الشيخ',
          size: size,
        ),
        
        // Telegram
        _buildSocialButtonWithLabel(
          context,
          imagePath: Assets.images.telegram.path,
          url: 'https://t.me/srajaldencom',
          label: 'تلغرام الشيخ',
          size: size,
        ),
      ],
    );
  }

  Widget _buildSocialButtonWithLabel(
    BuildContext context, {
    required String imagePath,
    required String url,
    required String label,
    required double size,
  }) {
    return InkWell(
      onTap: () => _launchUrl(context, url, label),
      child: Container(
        width: size,
        height: size,
        padding: EdgeInsets.all(size),
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
