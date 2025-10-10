import 'package:flutter/material.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';
import 'package:video_player/video_player.dart';

import '../../../../config/appconfig/app_colors.dart';
import '../../../../gen/fonts.gen.dart';

/// Widget for playing audio files using video_player (works for audio too)
class RealMediaPlayer extends StatefulWidget {
  final String audioUrl;
  final String soundTitle;
  final List<String>? alternativeUrls;
  final double? width;
  final double? height;

  const RealMediaPlayer({
    super.key,
    required this.audioUrl,
    required this.soundTitle,
    this.alternativeUrls,
    this.width,
    this.height,
  });

  @override
  State<RealMediaPlayer> createState() => _RealMediaPlayerState();
}

class _RealMediaPlayerState extends State<RealMediaPlayer> {
  VideoPlayerController? _controller;
  bool _isInitialized = false;
  bool _hasError = false;
  int _currentUrlIndex = 0;
  bool _isPlaying = false;
  bool _hasStartedLoading = false; // Track if user has clicked play

  @override
  void initState() {
    super.initState();
    // DON'T initialize here - wait for user to click play
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  void _initializePlayer() {
    if (!_hasStartedLoading) {
      setState(() {
        _hasStartedLoading = true;
      });
      _tryInitializeWithUrl(widget.audioUrl);
    }
  }

  void _tryInitializeWithUrl(String url) {
    try {
      _controller?.dispose();
      _controller = VideoPlayerController.networkUrl(Uri.parse(url));

      // Add listener to update UI when playback position changes
      _controller!.addListener(() {
        if (mounted) {
          setState(() {
            _isPlaying = _controller!.value.isPlaying;
          });
        }
      });

      _controller!.initialize().then((_) {
        if (mounted) {
          setState(() {
            _isInitialized = true;
            _hasError = false;
          });
          // Auto-play after loading
          _controller!.play();
          setState(() {
            _isPlaying = true;
          });
        }
      }).catchError((error) {
        debugPrint('Error initializing audio player with URL: $url, Error: $error');
        if (mounted) {
          setState(() {
            _hasError = true;
          });
        }
        _tryAlternativeUrl();
      });
    } catch (e) {
      debugPrint('Error creating audio player controller: $e');
      if (mounted) {
        setState(() {
          _hasError = true;
        });
      }
      _tryAlternativeUrl();
    }
  }

  void _tryAlternativeUrl() {
    if (widget.alternativeUrls != null &&
        _currentUrlIndex < widget.alternativeUrls!.length) {
      final alternativeUrl = widget.alternativeUrls![_currentUrlIndex];
      _currentUrlIndex++;
      _tryInitializeWithUrl(alternativeUrl);
    }
  }

  void _togglePlayPause() {
    // If not initialized yet, start initialization
    if (!_hasStartedLoading) {
      _initializePlayer();
      return;
    }

    // If initialized, toggle play/pause
    if (_controller != null && _isInitialized) {
      setState(() {
        if (_controller!.value.isPlaying) {
          _controller!.pause();
          _isPlaying = false;
        } else {
          _controller!.play();
          _isPlaying = true;
        }
      });
    }
  }

  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return '$minutes:$seconds';
  }

  @override
  Widget build(BuildContext context) {
    // Error state
    if (_hasError) {
      return Container(
        width: widget.width ?? 200.w,
        height: widget.height ?? 40.h,
        decoration: BoxDecoration(
          color: Colors.red.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(24.r),
          border: Border.all(color: Colors.red.withValues(alpha: 0.3)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.error_outline,
              color: Colors.red,
              size: 20.f,
            ),
          ],
        ),
      );
    }

    // Not started loading yet - show ready to play state with 00:00
    if (!_hasStartedLoading) {
      return Container(
        width: widget.width ?? 200.w,
        height: widget.height ?? 60.h,
        decoration: BoxDecoration(
          color: AppColors.lightGrey.withValues(alpha: 0.3),
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Row(
          children: [
            // Play button
            GestureDetector(
              onTap: _togglePlayPause,
              child: Container(
                width: 32.w,
                height: 32.h,
                margin: EdgeInsets.all(4.w),
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 24.f,
                ),
              ),
            ),

            // Progress and time info (showing 00:00)
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Empty progress bar
                    Directionality(
                      textDirection: TextDirection.ltr,
                      child: Container(
                        height: 4.h,
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(2.r),
                        ),
                      ),
                    ),

                    SizedBox(height: 2.h),

                    // Time display (00:00)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '00:00',
                          style: TextStyle(
                            fontFamily: FontFamily.tajawal,
                            fontSize: 12.f,
                            color: AppColors.primary,
                          ),
                        ),
                        Text(
                          '00:00',
                          style: TextStyle(
                            fontFamily: FontFamily.tajawal,
                            fontSize: 9.f,
                            color: AppColors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    // Loading state (after user clicked play)
    if (!_isInitialized || _controller == null) {
      return Container(
        width: widget.width ?? 200.w,
        height: widget.height ?? 60.h,
        decoration: BoxDecoration(
          color: AppColors.lightGrey.withValues(alpha: 0.3),
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 20.w,
                height: 20.h,
                child: CircularProgressIndicator(
                  strokeWidth: 2.w,
                  valueColor: AlwaysStoppedAnimation<Color>(AppColors.primary),
                ),
              ),
              SizedBox(width: 10.w),
              Text(
                'جاري التحميل...',
                style: TextStyle(
                  fontFamily: FontFamily.tajawal,
                  fontSize: 12.f,
                  color: AppColors.grey,
                ),
              ),
            ],
          ),
        ),
      );
    }

    // Playing state
    return Container(
      width: widget.width ?? 200.w,
      height: widget.height ?? 60.h,
      decoration: BoxDecoration(
        color: AppColors.lightGrey.withValues(alpha: 0.3),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Row(
        children: [
          // Play/Pause button
          GestureDetector(
            onTap: _togglePlayPause,
            child: Container(
              width: 32.w,
              height: 32.h,
              margin: EdgeInsets.all(4.w),
              decoration: BoxDecoration(
                color: AppColors.primary,
                shape: BoxShape.circle,
              ),
              child: Icon(
                _isPlaying ? Icons.pause : Icons.play_arrow,
                color: Colors.white,
                size: 24.f,
              ),
            ),
          ),

          // Progress and time info
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Progress bar - Force LTR direction for proper slider behavior
                  Directionality(
                    textDirection: TextDirection.ltr,
                    child: VideoProgressIndicator(
                      _controller!,
                      allowScrubbing: true,
                      colors: VideoProgressColors(
                        playedColor: AppColors.primary,
                        backgroundColor: AppColors.white,
                        bufferedColor: AppColors.primary.withValues(alpha: 0.3),
                      ),
                    ),
                  ),

                  SizedBox(height: 2.h),

                  // Time display
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        _formatDuration(_controller!.value.position),
                        style: TextStyle(
                          fontFamily: FontFamily.tajawal,
                          fontSize: 12.f,
                          color: AppColors.primary,
                        ),
                      ),
                      Text(
                        _formatDuration(_controller!.value.duration),
                        style: TextStyle(
                          fontFamily: FontFamily.tajawal,
                          fontSize: 9.f,
                          color: AppColors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}