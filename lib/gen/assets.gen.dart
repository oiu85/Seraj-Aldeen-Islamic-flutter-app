// dart format width=120

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/Search_empty.png
  AssetGenImage get searchEmpty => const AssetGenImage('assets/images/Search_empty.png');

  /// File path: assets/images/quran.png
  AssetGenImage get quran => const AssetGenImage('assets/images/quran.png');

  /// File path: assets/images/seraj_aldeen_image.png
  AssetGenImage get serajAldeenImage => const AssetGenImage('assets/images/seraj_aldeen_image.png');

  /// File path: assets/images/seraj_name.png
  AssetGenImage get serajName => const AssetGenImage('assets/images/seraj_name.png');

  /// File path: assets/images/shaik.png
  AssetGenImage get shaik => const AssetGenImage('assets/images/shaik.png');

  /// File path: assets/images/shaik_image-removebg-preview.png
  AssetGenImage get shaikImageRemovebgPreview => const AssetGenImage('assets/images/shaik_image-removebg-preview.png');

  /// File path: assets/images/shaik_image.png
  AssetGenImage get shaikImage => const AssetGenImage('assets/images/shaik_image.png');

  /// File path: assets/images/viewr_examplw2.png
  AssetGenImage get viewrExamplw2 => const AssetGenImage('assets/images/viewr_examplw2.png');

  /// File path: assets/images/viwer_example.png
  AssetGenImage get viwerExample => const AssetGenImage('assets/images/viwer_example.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        searchEmpty,
        quran,
        serajAldeenImage,
        serajName,
        shaik,
        shaikImageRemovebgPreview,
        shaikImage,
        viewrExamplw2,
        viwerExample
      ];
}

class $AssetsLottieGen {
  const $AssetsLottieGen();

  /// File path: assets/lottie/NoData.json
  String get noData => 'assets/lottie/NoData.json';

  /// File path: assets/lottie/NoInternet.json
  String get noInternet => 'assets/lottie/NoInternet.json';

  /// File path: assets/lottie/NotFound.json
  String get notFound => 'assets/lottie/NotFound.json';

  /// File path: assets/lottie/loading.json
  String get loading => 'assets/lottie/loading.json';

  /// List of all assets
  List<String> get values => [noData, noInternet, notFound, loading];
}

class $AssetsSvgGen {
  const $AssetsSvgGen();

  /// File path: assets/svg/book.svg
  SvgGenImage get book => const SvgGenImage('assets/svg/book.svg');

  /// File path: assets/svg/galery.svg
  SvgGenImage get galery => const SvgGenImage('assets/svg/galery.svg');

  /// File path: assets/svg/mosque.svg
  SvgGenImage get mosque => const SvgGenImage('assets/svg/mosque.svg');

  /// File path: assets/svg/paepar.svg
  SvgGenImage get paepar => const SvgGenImage('assets/svg/paepar.svg');

  /// File path: assets/svg/papear_shdow.svg
  SvgGenImage get papearShdow => const SvgGenImage('assets/svg/papear_shdow.svg');

  /// File path: assets/svg/search.svg
  SvgGenImage get search => const SvgGenImage('assets/svg/search.svg');

  /// File path: assets/svg/settings.svg
  SvgGenImage get settings => const SvgGenImage('assets/svg/settings.svg');

  /// File path: assets/svg/show.svg
  SvgGenImage get show => const SvgGenImage('assets/svg/show.svg');

  /// File path: assets/svg/sound_wave.svg
  SvgGenImage get soundWave => const SvgGenImage('assets/svg/sound_wave.svg');

  /// List of all assets
  List<SvgGenImage> get values => [book, galery, mosque, paepar, papearShdow, search, settings, show, soundWave];
}

class Assets {
  const Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsLottieGen lottie = $AssetsLottieGen();
  static const $AssetsSvgGen svg = $AssetsSvgGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}

class SvgGenImage {
  const SvgGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    _svg.ColorMapper? colorMapper,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
        colorMapper: colorMapper,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter: colorFilter ?? (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
