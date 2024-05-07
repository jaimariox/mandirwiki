import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class CustomImage extends StatelessWidget {
  final String image;
  final double? height;
  final double? width;
  final double? radius;
  final BoxFit? fit;
  final String? placeholder;
  static const String defaultImage = 'assets/images/noImage.png';
  const CustomImage(
      {super.key,
        required this.image,
        this.height,
        this.width,
        this.radius,
        this.fit = BoxFit.cover,
        this.placeholder = defaultImage});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius??0),
      child: CachedNetworkImage(

        placeholder: (context, url) => CupertinoActivityIndicator(),
        // Image.asset(placeholder ?? defaultImage, height: height, width: width, fit: BoxFit.cover),
        imageUrl:image,
        fit: fit ?? BoxFit.cover,
        height: height,
        width: width,
        errorWidget: (c, o, s) => Image.asset(placeholder ?? defaultImage,
            height: height, width: width, fit: BoxFit.fill),
      ),
    );
  }
}