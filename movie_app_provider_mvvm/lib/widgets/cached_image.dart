import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_app_provider_mvvm/constants/app_colors.dart';
import 'package:movie_app_provider_mvvm/constants/app_icons.dart';

class CachedImageWidget extends StatelessWidget {
  const CachedImageWidget({
    super.key,
    this.height,
    this.width,
    required this.imageUrl,
  });
  final double? height;
  final double? width;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return SizedBox(
      height: height ?? screenSize.height * 0.3,
      width: width ?? screenSize.width * 0.2,
      child: ClipRRect(
        child: CachedNetworkImage(
          fit: BoxFit.cover,
          imageUrl: imageUrl,
          placeholder: (context, url) => Container(color: Colors.grey),
          errorWidget: (context, url, error) =>
              Container(color: AppColors.kRed, child: Icon(AppIcons.error)),
        ),
      ),
    );
  }
}
