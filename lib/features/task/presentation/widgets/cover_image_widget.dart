import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CoverImageWidget extends StatelessWidget {
  const CoverImageWidget({
    super.key,
    required this.imageUrl,
    this.height = 200,
    this.width = double.infinity,
  });
  final String imageUrl;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: CachedNetworkImageProvider(imageUrl),
        ),
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
