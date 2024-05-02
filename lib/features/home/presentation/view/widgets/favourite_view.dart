import 'dart:io' show Platform;
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignment/common/constant/app_dimens.dart';
import 'package:flutter_assignment/common/constant/ui_helpers.dart';
import 'package:flutter_assignment/common/widgets/k_button.dart';
import 'package:flutter_assignment/common/widgets/k_cached_network_image.dart';
import 'package:flutter_assignment/core/app_routers/app_routers.dart';
import 'package:flutter_assignment/core/injection/injection.dart';
import 'package:flutter_assignment/features/home/presentation/cubit/home_cubit.dart';
import 'package:flutter_assignment/features/home/presentation/cubit/home_state.dart';
import 'package:flutter_assignment/theme/app_theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class FavouriteView extends StatelessWidget {
  const FavouriteView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final homeCubit = context.read<HomeCubit>();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Favourites"),
        centerTitle: true,
      ),
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (_, state) {
          return homeCubit.favouriteList.isEmpty
              ? Center(
                  child: SizedBox(
                    width: 250.w,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.folder_off,
                          color: disabledColor,
                          size: 80.h,
                        ),
                        sHeightSpan,
                        Text(
                          "No favourite",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  fontSize: AppDimens.headlineFontSizeSmall1,
                                  fontWeight: AppDimens.lfontweight),
                        ),
                        sHeightSpan,
                        Text(
                          "You can add an item to your favourite by clicking on photos  ",
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  fontSize: AppDimens.headlineFontSizeXSmall,
                                  color: disabledColor,
                                  fontWeight: AppDimens.sfontweight),
                        ),
                        mHeightSpan,
                        KButton(
                            bordered: true,
                            backgroundColor: Colors.transparent,
                            child: Text(
                              "Go back",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                      fontSize:
                                          AppDimens.headlineFontSizeXSmall,
                                      fontWeight: AppDimens.lfontweight),
                            ),
                            onPressed: () => locator<AppRouters>().popForced())
                      ],
                    ),
                  ),
                )
              : GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 15.0.h,
                    crossAxisSpacing: 15.0.w,
                  ),
                  padding: AppDimens.pagePadding,
                  itemCount: homeCubit.favouriteList.length,
                  itemBuilder: (context, index) {
                    final favouriteImageDetailsIndex =
                        homeCubit.favouriteList[index];

                    return GestureDetector(
                      onTap: () => adaptiveDialogBox(context, homeCubit, index),
                      child: KcachedNetworkImage(
                        imageSize: favouriteImageDetailsIndex.imageSize ?? 0,
                        imageHeight:
                            favouriteImageDetailsIndex.webformatHeight ?? 0,
                        imageUrl:
                            favouriteImageDetailsIndex.largeImageURL ?? '',
                        imageWidth:
                            favouriteImageDetailsIndex.webformatWidth ?? 0,
                        user: favouriteImageDetailsIndex.user ?? "",
                        state: state as HomeLoadedState,
                        id: favouriteImageDetailsIndex.id ?? 0,
                      ),
                    );
                  },
                );
        },
      ),
    );
  }
}

adaptiveDialogBox(BuildContext context, HomeCubit homeState, int index) {
  return showAdaptiveDialog(
    context: context,
    builder: (context) {
      return AlertDialog.adaptive(
        titleTextStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
            fontSize: AppDimens.headlineFontSizeSmall1,
            fontWeight: AppDimens.lfontweight),
        content: const Text(
          "Are you sure you want to remove this image from favourite?",
          textAlign: TextAlign.center,
        ),
        title: const Align(
          alignment: Alignment.center,
          child: Text(
            "Remove Item?",
          ),
        ),
        actions: [
          KButton(
            foregroundColor: Platform.isAndroid ? Colors.white : Colors.black,
            backgroundColor:
                Platform.isAndroid ? errorColor : Colors.transparent,
            child: const Text("Remove"),
            onPressed: () {
              homeState.removeFromFavourite(
                  id: index, imageDetailsIndex: index);
              locator<AppRouters>().popForced();
            },
          ),
          KButton(
              foregroundColor: Platform.isAndroid ? Colors.white : Colors.black,
              backgroundColor:
                  Platform.isAndroid ? disabledColor : Colors.transparent,
              child: const Text("Cancel"),
              onPressed: () => locator<AppRouters>().popForced()),
        ],
      );
    },
  );
}
