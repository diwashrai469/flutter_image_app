import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignment/common/constant/app_dimens.dart';
import 'package:flutter_assignment/common/constant/app_images.dart';
import 'package:flutter_assignment/common/constant/ui_helpers.dart';
import 'package:flutter_assignment/common/widgets/k_button.dart';
import 'package:flutter_assignment/common/widgets/k_cached_network_image.dart';
import 'package:flutter_assignment/common/widgets/k_loading_indicator.dart';
import 'package:flutter_assignment/common/widgets/k_textformfield.dart';
import 'package:flutter_assignment/core/app_routers/app_routers.dart';
import 'package:flutter_assignment/core/app_routers/app_routers.gr.dart';
import 'package:flutter_assignment/core/injection/injection.dart';
import 'package:flutter_assignment/features/home/data/model/image_response_model.dart';
import 'package:flutter_assignment/features/home/presentation/cubit/home_cubit.dart';
import 'package:flutter_assignment/features/home/presentation/cubit/home_state.dart';
import 'package:flutter_assignment/theme/app_theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final homeCubit = context.read<HomeCubit>();

    return Scaffold(
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          if (state is HomeLoadingState) {
            return Center(
              child: kLoadingIndicator(context: context),
            );
          } else if (state is HomeLoadedState) {
            return CustomScrollView(
              slivers: <Widget>[
                SliverAppBar(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(20.r),
                    ),
                  ),
                  centerTitle: false,
                  title: Image.asset(
                    AppImage.logo,
                  ),
                  floating: true,
                  pinned: true,
                  snap: false,
                  bottom: PreferredSize(
                    preferredSize: Size.fromHeight(80.h),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 15.0.h,
                        horizontal: 18.w,
                      ),
                      child: SizedBox(
                        height: 50.h,
                        child: GestureDetector(
                          onTap: () => locator<AppRouters>().push(
                            SearchImageView(homeCubit: homeCubit),
                          ),
                          child: KtextFormField(
                            homeCubit: homeCubit,
                            enable: false,
                            suffixIcon: const Icon(CupertinoIcons.photo_fill),
                          ),
                        ),
                      ),
                    ),
                  ),
                  actions: [
                    CircleAvatar(
                      backgroundColor: Colors.grey.shade200,
                      radius: AppDimens.mCircleAvatarRadius,
                      child: Stack(
                        children: [
                          IconButton(
                            onPressed: () => locator<AppRouters>()
                                .push(const FavouriteView()),
                            icon: homeCubit.favouriteList.isNotEmpty
                                ? const Icon(
                                    Icons.bookmark,
                                    color: primaryColor,
                                  )
                                : const Icon(Icons.bookmark_border_outlined),
                          ),
                          Positioned(
                            right: 0,
                            top: 0,
                            child: Badge(
                              backgroundColor: primaryColor,
                              label: Text(
                                  homeCubit.favouriteList.length.toString()),
                            ),
                          ),
                        ],
                      ),
                    ),
                    mWidthSpan,
                  ],
                ),
                SliverGrid(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      final imageDetailsIndex =
                          state.imageResponseModel.hits?[index];

                      return Padding(
                        padding: const EdgeInsets.all(8),
                        child: GestureDetector(
                          onTap: () => homeCubit.addToFavourite(
                            id: imageDetailsIndex?.id ?? 0,
                            imageDetails: Hits(
                                id: imageDetailsIndex?.id,
                                user: imageDetailsIndex?.user,
                                largeImageURL: imageDetailsIndex?.largeImageURL,
                                webformatHeight:
                                    imageDetailsIndex?.webformatHeight,
                                webformatWidth:
                                    imageDetailsIndex?.webformatWidth),
                          ),
                          child: KcachedNetworkImage(
                            imageSize: imageDetailsIndex?.imageSize ?? 0,
                            imageHeight:
                                imageDetailsIndex?.webformatHeight ?? 0,
                            imageUrl: imageDetailsIndex?.largeImageURL ?? '',
                            imageWidth: imageDetailsIndex?.webformatWidth ?? 0,
                            user: imageDetailsIndex?.user ?? "",
                            state: state,
                            id: imageDetailsIndex?.id ?? 0,
                          ),
                        ),
                      );
                    },
                    childCount: state.imageResponseModel.hits?.length ?? 0,
                  ),
                ),
              ],
            );
          } else {
            return Center(
              child: SizedBox(
                width: 200.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Somthing went wrong!",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontSize: AppDimens.headlineFontSizeSSmall,
                          fontWeight: AppDimens.lfontweight),
                    ),
                    sHeightSpan,
                    KButton(
                      child: const Text("Refresh"),
                      onPressed: () => homeCubit.getHomeImages(),
                    )
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
