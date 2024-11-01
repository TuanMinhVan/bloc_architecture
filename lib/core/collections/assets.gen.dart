/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class Assets {
  Assets._();

  /// File path: assets/icons/bell.svg
  static const SvgGenImage iconsBell = SvgGenImage('assets/icons/bell.svg');

  /// File path: assets/icons/bio.svg
  static const SvgGenImage iconsBio = SvgGenImage('assets/icons/bio.svg');

  /// File path: assets/icons/calendar.svg
  static const SvgGenImage iconsCalendar =
      SvgGenImage('assets/icons/calendar.svg');

  /// File path: assets/icons/launcher_icons.png
  static const AssetGenImage iconsLauncherIcons =
      AssetGenImage('assets/icons/launcher_icons.png');

  /// File path: assets/icons/lock.svg
  static const SvgGenImage iconsLock = SvgGenImage('assets/icons/lock.svg');

  /// File path: assets/icons/logo.svg
  static const SvgGenImage iconsLogo = SvgGenImage('assets/icons/logo.svg');

  /// File path: assets/icons/logout.svg
  static const SvgGenImage iconsLogout = SvgGenImage('assets/icons/logout.svg');

  /// File path: assets/icons/mail.svg
  static const SvgGenImage iconsMail = SvgGenImage('assets/icons/mail.svg');

  /// File path: assets/icons/mail_blue.svg
  static const SvgGenImage iconsMailBlue =
      SvgGenImage('assets/icons/mail_blue.svg');

  /// File path: assets/icons/message.svg
  static const SvgGenImage iconsMessage =
      SvgGenImage('assets/icons/message.svg');

  /// File path: assets/icons/phone.svg
  static const SvgGenImage iconsPhone = SvgGenImage('assets/icons/phone.svg');

  /// File path: assets/icons/shield.svg
  static const SvgGenImage iconsShield = SvgGenImage('assets/icons/shield.svg');

  /// File path: assets/icons/trash.svg
  static const SvgGenImage iconsTrash = SvgGenImage('assets/icons/trash.svg');

  /// File path: assets/icons/user.svg
  static const SvgGenImage iconsUser = SvgGenImage('assets/icons/user.svg');

  /// File path: assets/icons/user_id.svg
  static const SvgGenImage iconsUserId =
      SvgGenImage('assets/icons/user_id.svg');

  /// File path: assets/icons/visibility.svg
  static const SvgGenImage iconsVisibility =
      SvgGenImage('assets/icons/visibility.svg');

  /// File path: assets/icons/visibility_off.svg
  static const SvgGenImage iconsVisibilityOff =
      SvgGenImage('assets/icons/visibility_off.svg');

  /// File path: assets/images/avatar-default.svg
  static const SvgGenImage imagesAvatarDefault =
      SvgGenImage('assets/images/avatar-default.svg');

  /// File path: assets/navigator/Calendar.svg
  static const SvgGenImage navigatorCalendar =
      SvgGenImage('assets/navigator/Calendar.svg');

  /// File path: assets/navigator/Chart.svg
  static const SvgGenImage navigatorChart =
      SvgGenImage('assets/navigator/Chart.svg');

  /// File path: assets/navigator/Home.svg
  static const SvgGenImage navigatorHome =
      SvgGenImage('assets/navigator/Home.svg');

  /// File path: assets/navigator/Settings.svg
  static const SvgGenImage navigatorSettings =
      SvgGenImage('assets/navigator/Settings.svg');

  /// File path: assets/navigator/Time.svg
  static const SvgGenImage navigatorTime =
      SvgGenImage('assets/navigator/Time.svg');

  /// File path: assets/translations/en_US.json
  static const String translationsEnUS = 'assets/translations/en_US.json';

  /// File path: assets/translations/ja_JP.json
  static const String translationsJaJP = 'assets/translations/ja_JP.json';

  /// File path: assets/translations/vi_VN.json
  static const String translationsViVN = 'assets/translations/vi_VN.json';

  /// List of all assets
  static List<dynamic> get values => [
        iconsBell,
        iconsBio,
        iconsCalendar,
        iconsLauncherIcons,
        iconsLock,
        iconsLogo,
        iconsLogout,
        iconsMail,
        iconsMailBlue,
        iconsMessage,
        iconsPhone,
        iconsShield,
        iconsTrash,
        iconsUser,
        iconsUserId,
        iconsVisibility,
        iconsVisibilityOff,
        imagesAvatarDefault,
        navigatorCalendar,
        navigatorChart,
        navigatorHome,
        navigatorSettings,
        navigatorTime,
        translationsEnUS,
        translationsJaJP,
        translationsViVN
      ];
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

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
    FilterQuality filterQuality = FilterQuality.low,
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
      colorFilter: colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
