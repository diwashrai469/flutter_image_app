import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignment/common/constant/app_dimens.dart';
import 'package:flutter_assignment/common/constant/image_size_converter.dart';
import 'package:flutter_assignment/common/widgets/k_loading_indicator.dart';
import 'package:flutter_assignment/features/home/presentation/cubit/home_state.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class KcachedNetworkImage extends StatelessWidget {
  final String imageUrl;
  final String user;
  final int imageHeight;
  final int id;
  final int imageWidth;
  final int imageSize;
  final HomeLoadedState state;

  const KcachedNetworkImage(
      {super.key,
      required this.imageUrl,
      required this.user,
      required this.imageHeight,
      required this.imageWidth,
      required this.id,
      required this.state,
      required this.imageSize});

  @override
  Widget build(BuildContext context) {
    final imageContainerHeight = 200.h;
    final imageContainerWidth = 300.w;
    final containerBorderRadius = BorderRadius.circular(8);
    List<int?> favIds = state.favouriteList.map((e) => e.id).toList();
    bool isFav = false;
    if (favIds.contains(id)) {
      isFav = true;
    }

    return CachedNetworkImage(
      imageUrl: imageUrl,
      imageBuilder: (context, imageProvider) => Container(
        decoration: BoxDecoration(
          borderRadius: containerBorderRadius,
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0, bottom: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    user,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontWeight: AppDimens.lfontweight,
                        fontSize: AppDimens.headlineFontSizeXXSmall,
                        color: Colors.white),
                  ),
                  Text(
                    ImageSizeConverter.getFileSizeString(bytes: imageSize),
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontWeight: AppDimens.lfontweight,
                        fontSize: AppDimens.headlineFontSizeXXSmall,
                        color: Colors.white),
                  )
                ],
              ),
            ),
            Positioned(
              right: 0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(7)),
                  child: isFav
                      ? const Icon(
                          Icons.bookmark_added,
                          color: Colors.white,
                        )
                      : const Icon(
                          Icons.bookmark_outline,
                          color: Colors.white,
                        ),
                ),
              ),
            )
          ],
        ),
      ),
      placeholder: (context, url) => Container(
          decoration: BoxDecoration(
              color: Colors.grey.shade200, borderRadius: containerBorderRadius),
          height: imageContainerHeight,
          width: imageContainerWidth,
          child: Center(
            child: SizedBox(
                height: 30.h,
                width: 30.w,
                child: kLoadingIndicator(context: context)),
          )),
      errorWidget: (context, url, error) => Container(
        decoration: BoxDecoration(
            color: Colors.grey.shade200, borderRadius: containerBorderRadius),
        height: imageContainerHeight,
        width: imageContainerWidth,
        child: const Icon(Icons.error),
      ),
    );
  }
}
