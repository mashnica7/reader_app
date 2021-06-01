import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:image_pixels/image_pixels.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../injection/injection.dart';
import '../../constants/colors.dart';

class WebImage extends StatelessWidget {
  final String imageUrl;
  final double maxHeight;
  final double maxWidth;
  final double minHeight;
  final double minWidth;
  final BoxFit fit;
  final double placeholderSize;
  final EdgeInsetsGeometry padding;
  final AlignmentGeometry alignment;
  final bool imagePixelBackgound;
  final Alignment colorAlignment;
  final bool allowZoom;

  const WebImage({
    Key key,
    this.imageUrl,
    this.maxHeight = 100.0,
    this.maxWidth = 50.0,
    this.placeholderSize = 50.0,
    this.padding = const EdgeInsets.all(0.0),
    this.alignment = Alignment.center,
    this.minHeight = 10.0,
    this.minWidth = 10.0,
    this.fit = BoxFit.contain,
    this.imagePixelBackgound = false,
    this.colorAlignment = Alignment.topLeft,
    this.allowZoom = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sharedPreferences = getIt<SharedPreferences>();

    return imageUrl != null
        ? (imagePixelBackgound
            ? _coloredWebImage(sharedPreferences)
            : _webImage(sharedPreferences))
        : Container();
  }

  Widget _webImage(SharedPreferences sharedPreferences) {
    if (imageUrl.isEmpty) {
      return _notSupportedImageWidget(
          padding: padding,
          alignment: alignment,
          maxHeight: maxHeight,
          maxWidth: maxWidth,
          minHeight: minHeight,
          minWidth: minWidth,
          placeholderSize: placeholderSize);
    }
    return _getCachedNetworkImage(sharedPreferences);
  }

  Widget _getCachedNetworkImage(SharedPreferences sharedPreferences) {
    try {
      if (allowZoom) {
        return InteractiveViewer(
          boundaryMargin: const EdgeInsets.all(20.0),
          minScale: 0.1,
          maxScale: 2.0,
          child: SimpleCachedNetworkImage(
              padding: padding,
              alignment: alignment,
              maxHeight: maxHeight,
              maxWidth: maxWidth,
              minHeight: minHeight,
              minWidth: minWidth,
              fit: fit,
              imageUrl: imageUrl,
              placeholderSize: placeholderSize,
              sharedPreferences: sharedPreferences),
        );
      } else {
        return SimpleCachedNetworkImage(
            padding: padding,
            alignment: alignment,
            maxHeight: maxHeight,
            maxWidth: maxWidth,
            minHeight: minHeight,
            minWidth: minWidth,
            fit: fit,
            imageUrl: imageUrl,
            placeholderSize: placeholderSize,
            sharedPreferences: sharedPreferences);
      }
    } catch (e) {
      return _notSupportedImageWidget(
          padding: padding,
          alignment: alignment,
          maxHeight: maxHeight,
          maxWidth: maxWidth,
          minHeight: minHeight,
          minWidth: minWidth,
          placeholderSize: placeholderSize);
    }
  }

//image with background based on pixel color()
  Widget _coloredWebImage(SharedPreferences sharedPreferences) {
    return ImagePixels.container(
      defaultColor: Colors.white,
      colorAlignment: colorAlignment,
      imageProvider: CachedNetworkImageProvider(
        imageUrl,
      ),
      child: Container(
        alignment: alignment,
        constraints: BoxConstraints(
          minHeight: 50,
          maxHeight: maxHeight,
          minWidth: minWidth,
          maxWidth: maxWidth,
        ),
        child: _webImage(sharedPreferences),
      ),
    );
  }
}

class SimpleCachedNetworkImage extends StatelessWidget {
  const SimpleCachedNetworkImage(
      {Key key,
      @required this.padding,
      @required this.alignment,
      @required this.maxHeight,
      @required this.maxWidth,
      @required this.minHeight,
      @required this.minWidth,
      @required this.fit,
      @required this.imageUrl,
      @required this.placeholderSize,
      @required this.sharedPreferences})
      : super(key: key);

  final EdgeInsetsGeometry padding;
  final AlignmentGeometry alignment;
  final double maxHeight;
  final double maxWidth;
  final double minHeight;
  final double minWidth;
  final BoxFit fit;
  final String imageUrl;
  final double placeholderSize;
  final SharedPreferences sharedPreferences;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      alignment: alignment,
      constraints: BoxConstraints(
        maxHeight: maxHeight,
        maxWidth: maxWidth,
        minHeight: minHeight,
        minWidth: minWidth,
      ),
      child: CachedNetworkImage(
        fit: fit,
        alignment: alignment,
        width: maxWidth,
        height: maxHeight,
        imageUrl: imageUrl,
        placeholder: (context, url) => Container(
          alignment: alignment,
          child: Icon(
            Icons.book,
            size: placeholderSize,
            color: LIGHT_GREY,
          ),
        ),
        errorWidget: (context, url, error) => Container(
          alignment: alignment,
          child: Icon(
            Icons.book,
            size: placeholderSize,
            color: LIGHT_GREY,
          ),
        ),
      ),
    );
  }
}

class _notSupportedImageWidget extends StatelessWidget {
  const _notSupportedImageWidget({
    Key key,
    @required this.padding,
    @required this.alignment,
    @required this.maxHeight,
    @required this.maxWidth,
    @required this.minHeight,
    @required this.minWidth,
    @required this.placeholderSize,
  }) : super(key: key);

  final EdgeInsetsGeometry padding;
  final AlignmentGeometry alignment;
  final double maxHeight;
  final double maxWidth;
  final double minHeight;
  final double minWidth;
  final double placeholderSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      alignment: alignment,
      constraints: BoxConstraints(
        maxHeight: maxHeight,
        maxWidth: maxWidth,
        minHeight: minHeight,
        minWidth: minWidth,
      ),
      child: Icon(
        Icons.book,
        size: placeholderSize,
        color: LIGHT_GREY,
      ),
    );
  }
}
