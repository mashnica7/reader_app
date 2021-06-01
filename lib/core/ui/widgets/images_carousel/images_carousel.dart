import 'dart:io';
import 'dart:math';

import 'package:animator/animator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../constants/colors.dart';
import '../web_image.dart';
import 'basic_carousel_image_cell.dart';

class ImagesCarousel extends StatefulWidget {
  final List<String> imageUrls;
  final int initialImageIndex;
  final bool isRemote;
  final Axis axis;
  final double carouselW;
  final double carouselH;
  final double borderRadius;
  final double aspectRatio;
  final bool autoplay;
  final bool enableInfiniteScroll;
  final void Function({int imageIndex}) onDelete;
  final bool deleteEnabled;
  final bool imagePixelBackgound;
  final double placeholderSize;
  final bool showIndicator;
  final double viewportFraction;
  final BoxFit imageFit;
  final bool allowZoom;

  const ImagesCarousel({
    Key key,
    @required this.imageUrls,
    this.isRemote = true,
    @required this.axis,
    @required this.carouselW,
    @required this.carouselH,
    this.borderRadius = 7,
    @required this.onDelete,
    this.deleteEnabled = true,
    this.allowZoom = false,
    this.initialImageIndex,
    this.aspectRatio = 16 / 9,
    this.autoplay = false,
    this.enableInfiniteScroll = false,
    this.imagePixelBackgound = false,
    this.placeholderSize,
    this.showIndicator = true,
    this.viewportFraction = 0.92,
    this.imageFit = BoxFit.cover,
  })  : assert(imageUrls != null),
        assert(carouselW != null),
        assert(carouselH != null),
        assert(axis != null),
        assert(onDelete != null),
        super(key: key);

  @override
  _ImagesCarouselState createState() => _ImagesCarouselState();
}

class _ImagesCarouselState extends State<ImagesCarousel> {
  bool isEditing = false;
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final items = isEditing
        ? carouselDelitionItems(
            widget.carouselW, widget.carouselH, widget.borderRadius)
        : carouselItems(
            widget.carouselW, widget.carouselH, widget.borderRadius);

    return Stack(
      children: [
        CarouselSlider(
            options: CarouselOptions(
              height: widget.carouselH,
              enableInfiniteScroll:
                  widget.enableInfiniteScroll && widget.imageUrls.length > 1,
              aspectRatio: widget.aspectRatio,
              enlargeCenterPage: true,
              scrollDirection: widget.axis,
              initialPage: widget.initialImageIndex ?? items.length - 1,
              viewportFraction: widget.viewportFraction, //11/14,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
              reverse: false,
              onPageChanged: (currentPage, reason) {
                HapticFeedback.selectionClick();
                if (mounted) {
                  setState(() {
                    _currentPage = currentPage;
                  });
                }
              },
              autoPlay: widget.autoplay && widget.imageUrls.length > 1,
              pauseAutoPlayOnTouch: true,
              pauseAutoPlayOnManualNavigate: true,
            ),
            items: items),
        widget.showIndicator && widget.imageUrls.length > 1
            ? Positioned(
                bottom: 8.0,
                left: 0.0,
                right: 0.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AnimatedSmoothIndicator(
                      activeIndex: _currentPage,
                      count: widget.imageUrls.length,
                      effect: const SlideEffect(
                        spacing: 8.0,
                        radius: 4.0,
                        dotWidth: 8.0,
                        dotHeight: 8.0,
                        paintStyle: PaintingStyle.stroke,
                        strokeWidth: 0,
                        dotColor: GREY,
                        offset: 0,
                        activeDotColor: GREEN,
                      ),
                    ),
                  ],
                ))
            : Container(),
      ],
    );
  }

  //carousel images in normal mode:
  List<Widget> carouselItems(
      double carouselW, double carouselH, double borderRadius) {
    return widget.imageUrls
        .asMap()
        .map((index, imgURL) {
          return MapEntry(
              index,
              InkWell(
                borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
                onLongPress: () {
                  if (widget.deleteEnabled == true) {
                    HapticFeedback.heavyImpact();
                    // print("carousel -> enter edit mode...");
                    if (mounted) {
                      setState(() {
                        isEditing = true;
                      });
                    }
                  }
                },
                onTap: () {},
                child: (imgURL != null)
                    ? Container(
                        decoration: BoxDecoration(
                          color: Colors.white.withAlpha(50),
                          border: Border.all(
                              color: GREY.withAlpha(100), width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(widget.borderRadius)),
                        ),
                        margin: const EdgeInsets.symmetric(horizontal: 3.0),
                        child: ClipRRect(
                            borderRadius: BorderRadius.all(
                                Radius.circular(widget.borderRadius)),
                            child: Stack(
                              children: <Widget>[
                                imgURL.isNotEmpty
                                    ? Container(
                                        child: _getImage(
                                            imgUrl: imgURL,
                                            isRemote: widget.isRemote,
                                            allowZoom: widget.allowZoom,
                                            fit: widget.imageFit),
                                      )
                                    : Center(
                                        child: Icon(
                                        Icons.book,
                                        color: LIGHT_GREY,
                                        size: widget.placeholderSize ??
                                            MediaQuery.of(context).size.width *
                                                0.17,
                                      )),
                              ],
                            )),
                      )
                    : Icon(
                        Icons.book,
                        color: LIGHT_GREY,
                        size: widget.placeholderSize ??
                            MediaQuery.of(context).size.width * 0.17,
                      ),
              ));
        })
        .values
        .toList();
  }

  //carousel images in deletion mode:
  List<Widget> carouselDelitionItems(
      double carouselW, double carouselH, double borderRadius) {
    //    debugPrint("get carousel delition items...");

    return widget.imageUrls
        .asMap()
        .map((index, imgURL) {
          return MapEntry(
              index,
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Animator(
                  tween: Tween<double>(begin: -pi / 256, end: pi / 256),
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.easeInOut,
                  cycles: 0,
                  builder: (anim) {
                    return Transform.rotate(
                        angle: anim.value as double,
                        child: InkWell(
                            onTap: () {
                              //print("carousel -> exit delete amination...");
                              if (mounted) {
                                setState(() {
                                  isEditing = false;
                                });
                              }
                            },
                            child: Stack(
                              children: [
                                (imgURL != null && imgURL.isNotEmpty)
                                    ? BasicCarouselImageCell(
                                        carouselW: carouselW,
                                        carouselH: carouselH,
                                        borderRadius: borderRadius,
                                        index: index,
                                        isRemote: widget.isRemote,
                                        totalImages: widget.imageUrls.length,
                                        imageUrl: widget.imageUrls[index],
                                      )
                                    : const Placeholder(),
                                IconButton(
                                    icon: Icon(
                                      Icons.cancel,
                                      //                                    size: 47.0,
                                      color: Colors.red[400],
                                    ),
                                    iconSize: 66,
                                    onPressed: () {
                                      HapticFeedback.heavyImpact();
                                      widget.onDelete(imageIndex: index);

                                      //uncomment if you wanna leave editing mode right away:
                                      //isEditing = false;
                                    }),
                              ],
                            )));
                  },
                ),
              ));
        })
        .values
        .toList();
  }

  Widget _getImage({String imgUrl, bool isRemote, BoxFit fit, bool allowZoom}) {
    return imgUrl.contains('http')
        ? WebImage(
            imageUrl: imgUrl,
            imagePixelBackgound: widget.imagePixelBackgound,
            allowZoom: allowZoom,
            fit: fit,
            maxHeight: MediaQuery.of(context).size.height,
            maxWidth: MediaQuery.of(context).size.width,
            placeholderSize: widget.placeholderSize ??
                MediaQuery.of(context).size.width * 0.17,
          )
        : Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: FileImage(File(imgUrl)),
              fit: fit,
            )),
          );
  }
}
