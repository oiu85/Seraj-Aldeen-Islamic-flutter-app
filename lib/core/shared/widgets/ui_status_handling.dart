import 'package:flutter/material.dart';
import 'package:seraj_aldean_flutter_app/config/appconfig/app_colors.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';
import 'package:lottie/lottie.dart';
import 'package:seraj_aldean_flutter_app/gen/assets.gen.dart';
import 'package:seraj_aldean_flutter_app/core/models/page_state/bloc_status.dart';

class SimpleLottieHandler extends StatelessWidget {
  const SimpleLottieHandler({
    super.key,
    required this.blocStatus,
    required this.successWidget,
    this.isEmpty = false,
    this.emptyMessage,
    this.loadingMessage,
    this.onRetry,
    this.animationSize,
  });

  final BlocStatus blocStatus;
  final Widget successWidget;
  final bool isEmpty;
  final String? emptyMessage;
  final String? loadingMessage;
  final VoidCallback? onRetry;
  final double? animationSize;

  @override
  Widget build(BuildContext context) {
    if (blocStatus.isLoading() || blocStatus.isInitial()) {
      return _buildLoadingState(context);
    }
    if (blocStatus.isFail()) {
      return _buildErrorState(context);
    }
    if (blocStatus.isSuccess() && isEmpty) {
      return _buildEmptyState(context);
    }
    if (blocStatus.isSuccess()) {
      return successWidget;
    }
    return successWidget;
  }

  Widget _buildLoadingState(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    
    return SizedBox(
      height: screenHeight * 0.7,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Lottie.asset(
              Assets.lottie.loading,
              height: animationSize ?? ScreenUtilRes.height(200),
              width: animationSize ?? ScreenUtilRes.width(200),
              fit: BoxFit.contain,
              repeat: true,
              animate: true,
              reverse: false,
              frameRate: FrameRate.max,
            ),
            SizedBox(height: ScreenUtilRes.height(16)),
            Text(
              loadingMessage ?? 'جاري التحميل...',
              style: TextStyle(
                fontSize: ScreenUtilRes.fontSize(16),
                fontWeight: FontWeight.bold,
                fontFamily: 'Tajawal',
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildErrorState(BuildContext context) {
    String lottieAsset = _getErrorLottieAsset(blocStatus.error);
    bool isNetworkError = _isNetworkError(blocStatus.error);
    final screenHeight = MediaQuery.of(context).size.height;

    return SizedBox(
      height: screenHeight * 0.7,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Lottie.asset(
              lottieAsset,
              height: animationSize ?? ScreenUtilRes.height(200),
              width: animationSize ?? ScreenUtilRes.width(200),
              fit: BoxFit.contain,
              repeat: true,
            ),
            if (isNetworkError) ...[
              SizedBox(height: ScreenUtilRes.height(20)),
              Text(
                'خطأ في الاتصال',
                style: TextStyle(
                  fontSize: ScreenUtilRes.fontSize(18),
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Tajawal',
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: ScreenUtilRes.height(10)),
              Text(
                'تأكد من اتصالك بالإنترنت وحاول مرة أخرى',
                style: TextStyle(
                  fontSize: ScreenUtilRes.fontSize(14),
                  fontFamily: 'Tajawal',
                  color: Colors.grey[600],
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: ScreenUtilRes.height(20)),
              ElevatedButton.icon(
                onPressed: onRetry,
                icon: Icon(Icons.refresh, size: ScreenUtilRes.fontSize(20), color: Colors.white,),
                label: Text(
                  'إعادة المحاولة',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: ScreenUtilRes.fontSize(16),
                    fontFamily: 'Tajawal',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(
                    horizontal: ScreenUtilRes.width(24),
                    vertical: ScreenUtilRes.height(12)
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(ScreenUtilRes.radius(25)),
                  ),
                  elevation: 2,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  String _getErrorLottieAsset(String? errorMessage) {
    if (errorMessage == null) return Assets.lottie.notFound;

    // Check error message to determine which Lottie to show
    if (errorMessage.toLowerCase().contains('timeout') ||
        errorMessage.toLowerCase().contains('connection timeout') ||
        errorMessage.toLowerCase().contains('receive timeout') ||
        errorMessage.toLowerCase().contains('send timeout')) {
      return Assets.lottie.timeout;
    }
    if (errorMessage.toLowerCase().contains('network') ||
        errorMessage.toLowerCase().contains('internet') ||
        errorMessage.toLowerCase().contains('connection')) {
      return Assets.lottie.noInternet;
    }
    if (errorMessage.toLowerCase().contains('not found') ||
        errorMessage.toLowerCase().contains('404') ||
        errorMessage.toLowerCase().contains('notfound')) {
      return Assets.lottie.notFound;
    }
    return Assets.lottie.notFound;
  }

  bool _isNetworkError(String? errorMessage) {
    if (errorMessage == null) return false;

    final lowerError = errorMessage.toLowerCase();
    return lowerError.contains('network') ||
        lowerError.contains('internet') ||
        lowerError.contains('connection') ||
        lowerError.contains('timeout') ||
        lowerError.contains('no internet') ||
        lowerError.contains('connection timeout') ||
        lowerError.contains('receive timeout') ||
        lowerError.contains('send timeout');
  }

  Widget _buildEmptyState(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    
    return SizedBox(
      height: screenHeight * 0.7,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Lottie.asset(
              Assets.lottie.noData,
              height: animationSize ?? ScreenUtilRes.height(200),
              width: animationSize ?? ScreenUtilRes.width(200),
              fit: BoxFit.contain,
              repeat: true,
            ),
            SizedBox(height: ScreenUtilRes.height(16)),
            Text(
              emptyMessage ?? 'لا توجد بيانات',
              style: TextStyle(
                fontSize: ScreenUtilRes.fontSize(16),
                fontWeight: FontWeight.bold,
                fontFamily: 'Tajawal',
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}