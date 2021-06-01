import 'dart:io';

import 'package:flutter/material.dart';

import '../web_image.dart';

class BasicCarouselImageCell extends StatelessWidget {
  final String imageUrl;
  final bool isRemote; //or saved loccaly on disk. Defaults to true.
  final int index;
  final int totalImages;
  final double carouselW;
  final double carouselH;
  final double borderRadius;

  const BasicCarouselImageCell({
    Key key,
    @required this.imageUrl,
    @required this.index,
    @required this.totalImages,
    @required this.carouselW,
    @required this.carouselH,
    @required this.borderRadius,
    this.isRemote = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: carouselW,
        height: carouselH,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(borderRadius),
          child: Stack(
            children: <Widget>[
              // Container(color: Colors.yellow),
              Center(
                child: Hero(
                  tag: imageUrl,
                  child: _getImage(
                    context,
                    imgUrl: imageUrl,
                    isRemote: isRemote,
                  ),
                ),
              ),
              Positioned(
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(100, 0, 0, 0),
                        Color.fromARGB(0, 0, 0, 0)
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('${index + 1} / $totalImages',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2
                              .copyWith(color: Colors.white)),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }

  Widget _getImage(BuildContext context, {String imgUrl, bool isRemote}) {
    return isRemote
        ? WebImage(
            imageUrl: imgUrl,
            imagePixelBackgound: true,
            fit: BoxFit.fill,
            // minWidth: MediaQuery.of(context).size.width,
            // minHeight:
            //     MediaQuery.of(context).size.height,
            maxHeight: MediaQuery.of(context).size.height,
            maxWidth: MediaQuery.of(context).size.width,
            placeholderSize: MediaQuery.of(context).size.width * 0.17,
            // padding: const EdgeInsets.only(left: 0, top: 0.0),
          )
        : Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: FileImage(File(imgUrl)),
              fit: BoxFit.fill,
            )),
          );
  }
}
