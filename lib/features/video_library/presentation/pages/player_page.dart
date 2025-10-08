import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:seraj_aldean_flutter_app/config/appconfig/app_colors.dart';
import 'package:seraj_aldean_flutter_app/core/di/app_dependencies.dart';
import 'package:seraj_aldean_flutter_app/core/models/page_state/bloc_status.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';
import 'package:seraj_aldean_flutter_app/core/routes.dart';
import 'package:seraj_aldean_flutter_app/core/shared/widgets/app_scaffold.dart';
import 'package:seraj_aldean_flutter_app/core/shared/widgets/ui_status_handling.dart';
import 'package:seraj_aldean_flutter_app/gen/fonts.gen.dart';
import 'package:video_player/video_player.dart';

import '../../../../gen/assets.gen.dart';
import '../../data/models/video_model.dart';
import '../../domain/repositories/video_repository.dart';

class PlayerPage extends StatefulWidget {
  final int videoId;
  
  const PlayerPage({
    super.key,
    required this.videoId,
  });

  @override
  State<PlayerPage> createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage> {
  final VideoRepository _repository = getIt<VideoRepository>();
  VideoPlayerController? _controller;
  VideoDetailData? _videoData;
  List<VideoItem> _relatedVideos = [];
  bool _isLoading = true;
  String? _error;

  @override
  void initState() {
    super.initState();
    _loadVideoDetail();
  }

  Future<void> _loadVideoDetail() async {
    if (!mounted) return;
    
    setState(() {
      _isLoading = true;
      _error = null;
    });

    final result = await _repository.getVideoDetail(videoId: widget.videoId);

    if (!mounted) return;

    result.fold(
      (exception) {
        if (mounted) {
          setState(() {
            _isLoading = false;
            _error = exception.toString();
          });
        }
      },
      (response) {
        if (response.data?.videoFileUrl != null) {
          _videoData = response.data;
          _initializeVideoPlayer(response.data!.videoFileUrl!);
          
          // Load related videos from the same category
          if (response.data?.category?.catId != null) {
            _loadRelatedVideos(response.data!.category!.catId!);
          }
        } else {
          if (mounted) {
            setState(() {
              _isLoading = false;
              _error = 'Video URL not found';
            });
          }
        }
      },
    );
  }

  Future<void> _loadRelatedVideos(int categoryId) async {
    final result = await _repository.getCategoryContent(
      categoryId: categoryId,
      page: 1,
      perPage: 6,
    );

    if (!mounted) return;

    result.fold(
      (exception) {
        // Silently fail for related videos
      },
      (response) {
        if (response.data?.content != null && mounted) {
          setState(() {
            // Filter out the current video and take only 2 videos
            _relatedVideos = response.data!.content!
                .where((video) => video.id != widget.videoId)
                .take(2)
                .toList();
          });
        }
      },
    );
  }

  void _initializeVideoPlayer(String videoUrl) {
    _controller = VideoPlayerController.networkUrl(Uri.parse(videoUrl))
      ..initialize().then((_) {
        if (mounted) {
          setState(() {
            _isLoading = false;
          });
          // Add listener to update UI when video position changes
          _controller!.addListener(() {
            if (mounted) {
              setState(() {});
            }
          });
        }
      }).catchError((error) {
        if (mounted) {
          setState(() {
            _isLoading = false;
            _error = 'Failed to load video: $error';
          });
        }
      });
  }

  String _formatDuration(Duration? duration) {
    if (duration == null) return '0:00';
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final hours = duration.inHours;
    final minutes = duration.inMinutes.remainder(60);
    final seconds = duration.inSeconds.remainder(60);
    
    if (hours > 0) {
      return '$hours:${twoDigits(minutes)}:${twoDigits(seconds)}';
    }
    return '$minutes:${twoDigits(seconds)}';
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return AppScaffold.clean(
        backgroundColor: Colors.white,
        body: SimpleLottieHandler(
          blocStatus: const BlocStatus.loading(),
          successWidget: const SizedBox.shrink(),
        ),
      );
    }

    if (_error != null) {
      return AppScaffold.clean(
        backgroundColor: Colors.white,
        body: SimpleLottieHandler(
          blocStatus: BlocStatus.fail(error: _error!),
          successWidget: const SizedBox.shrink(),
          onRetry: _loadVideoDetail,
        ),
      );
    }

    return AppScaffold.clean(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0.p),
        child: Column(
          children: [
            SizedBox(height: 40.h),
            Center(
              child: Container(
                width: double.infinity,
                height: 342.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  color: AppColors.extraLightGrey,
                ),
                child: _controller != null && _controller!.value.isInitialized
                    ? ClipRRect(
                        borderRadius: BorderRadius.circular(20.r),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            AspectRatio(
                              aspectRatio: _controller!.value.aspectRatio,
                              child: VideoPlayer(_controller!),
                            ),
                            // Video controls overlay
                            Positioned.fill(
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _controller!.value.isPlaying
                                        ? _controller!.pause()
                                        : _controller!.play();
                                  });
                                },
                                child: Container(
                                  color: Colors.transparent,
                                  child: !_controller!.value.isPlaying
                                      ? Center(
                                          child: Icon(
                                            Icons.play_circle_outline,
                                            size: 70,
                                            color: Colors.white,
                                          ),
                                        )
                                      : const SizedBox.shrink(),
                                ),
                              ),
                            ),
                            // Video progress bar at bottom
                            Positioned(
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: VideoProgressIndicator(
                                _controller!,
                                allowScrubbing: true,
                                colors: VideoProgressColors(
                                  playedColor: AppColors.primary,
                                  bufferedColor: AppColors.lightGrey,
                                  backgroundColor: Colors.white.withValues(alpha: 0.3),
                                ),
                                padding: EdgeInsets.symmetric(vertical: 4.h),
                              ),
                            ),
                            // Video info overlay at top
                            Positioned(
                              top: 0,
                              left: 0,
                              right: 0,
                              child: Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Colors.black.withValues(alpha: 0.6),
                                      Colors.transparent,
                                    ],
                                  ),
                                ),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 16.w,
                                  vertical: 12.h,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    // Current position / Total duration
                                    Text(
                                      '${_formatDuration(_controller!.value.position)} / ${_formatDuration(_controller!.value.duration)}',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14.f,
                                        fontFamily: FontFamily.tajawal,
                                        fontWeight: FontWeight.bold,
                                        shadows: [
                                          Shadow(
                                            color: Colors.black.withValues(alpha: 0.8),
                                            blurRadius: 4,
                                          ),
                                        ],
                                      ),
                                    ),
                                    // Quality indicator (if available)
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 8.w,
                                        vertical: 4.h,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.black.withValues(alpha: 0.5),
                                        borderRadius: BorderRadius.circular(4.r),
                                      ),
                                      child: Text(
                                        'HD',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12.f,
                                          fontFamily: FontFamily.tajawal,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    : const Center(
                        child: CircularProgressIndicator(),
                      ),
              ),
            ),
            SizedBox(height: 20.h),
            Row(
              children: [
                SvgPicture.asset(
                  Assets.svg.document.path,
                  width: 24,
                  height: 24,
                ),
                SizedBox(width: 10.w),
                Expanded(
                  child: Text(
                    _videoData?.videoTitle ?? 'عنوان الفيديو',
                    style: TextStyle(
                      fontSize: 16.f,
                      fontWeight: FontWeight.bold,
                      fontFamily: FontFamily.tajawal,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const Spacer(),
                Text(
                  '${_videoData?.videoVisitor ?? 0}',
                  style: TextStyle(
                    color: AppColors.grey,
                    fontSize: 14.f,
                    fontFamily: FontFamily.tajawal,
                  ),
                ),
                SizedBox(width: 5.w),
                Icon(
                  Icons.remove_red_eye_outlined,
                  size: 24,
                  color: AppColors.grey,
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                _controller != null && _controller!.value.isInitialized
                    ? _formatDuration(_controller!.value.duration)
                    : '0:00',
                style: TextStyle(
                  fontSize: 18.f,
                  fontFamily: FontFamily.tajawal,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10.h),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                "شاهد مواضيع أخرى: ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.f,
                  fontFamily: FontFamily.tajawal,
                ),
              ),
            ),
            SizedBox(height: 10.h),
            // Show related videos if available, otherwise show empty space
            if (_relatedVideos.isNotEmpty)
              ..._relatedVideos.map((video) => _buildRelatedVideoCard(video))
            else
              SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }

  Widget _buildRelatedVideoCard(VideoItem video) {
    return Container(
      height: 83.h,
      margin: EdgeInsets.only(bottom: 20.p, right: 10.p, left: 10.p),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            blurRadius: 8,
            spreadRadius: 0.3,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8.r),
          child: Image.asset(
            Assets.images.vedioIcon.path,
            width: 40.w,
            height: 40.w,
            fit: BoxFit.cover,
          ),
        ),
        title: Center(
          child: Text(
            video.title ?? '',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16.f,
              fontWeight: FontWeight.bold,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        trailing: Container(
          height: 40.w,
          width: 40.w,
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(100.r),
          ),
          child: Center(
            child: Icon(
              Icons.arrow_forward_ios,
              size: 18.p,
              color: AppColors.white,
            ),
          ),
        ),
        onTap: () {
          if (video.id != null) {
            _navigateToRelatedVideo(video.id!);
          }
        },
      ),
    );
  }

  void _navigateToRelatedVideo(int videoId) {
    // Pause the video immediately
    _controller?.pause();
    
    // Navigate with replacement - dispose will happen in dispose() method
    Get.offAndToNamed(
      AppRoute.player,
      arguments: {'videoId': videoId},
    );
  }
}
