import 'package:flutter/material.dart';
import 'package:movie_app_provider_mvvm/constants/app_colors.dart';
import 'package:movie_app_provider_mvvm/constants/app_constants.dart';
import 'package:movie_app_provider_mvvm/constants/app_icons.dart';
import 'package:movie_app_provider_mvvm/widgets/cached_image.dart';

class MovieScreen extends StatelessWidget {
  const MovieScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text('Popular Movies'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(AppIcons.favorite, color: AppColors.kRed),
          ),
          SizedBox(width: 10),
          IconButton(onPressed: () {}, icon: Icon(AppIcons.darkmode)),
        ],
        actionsPadding: EdgeInsets.only(right: 10),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: CachedImageWidget(
              height: screenSize.height * 0.3,
              width: screenSize.width * 0.2,
              imageUrl: AppConstants.imageUrl,
            ),
          );
        },
      ),
    );
  }
}
