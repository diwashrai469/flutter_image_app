import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignment/common/constant/app_dimens.dart';
import 'package:flutter_assignment/common/constant/ui_helpers.dart';
import 'package:flutter_assignment/common/widgets/k_button.dart';
import 'package:flutter_assignment/common/widgets/k_cached_network_image.dart';
import 'package:flutter_assignment/common/widgets/k_loading_indicator.dart';
import 'package:flutter_assignment/common/widgets/k_textformfield.dart';
import 'package:flutter_assignment/features/home/data/model/image_response_model.dart';
import 'package:flutter_assignment/features/home/presentation/cubit/home_cubit.dart';
import 'package:flutter_assignment/features/home/presentation/cubit/home_state.dart';
import 'package:flutter_assignment/theme/app_theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class SearchImageView extends StatefulWidget {
  final HomeCubit homeCubit;

  const SearchImageView({super.key, required this.homeCubit});

  @override
  State<SearchImageView> createState() => _SearchImageViewState();
}

class _SearchImageViewState extends State<SearchImageView> {
  @override
  void initState() {
    widget.homeCubit.gridViewScrollController.addListener(() {
      widget.homeCubit.scrollListener();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final homeCubit = context.read<HomeCubit>();

    TextEditingController searchTextController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 90.h,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(2.h),
          child: Padding(
            padding: EdgeInsets.all(12.0.h),
            child: SizedBox(
              height: 50.h,
              child: Row(
                children: [
                  Expanded(
                    child: KtextFormField(
                      controller: searchTextController,
                      autoFocus: true,
                      enable: true,
                      suffixIcon: const Icon(Icons.close),
                      homeCubit: homeCubit,
                    ),
                  ),
                  sWidthSpan,
                  KButton(
                    backgroundColor: Colors.transparent,
                    bordered: true,
                    onPressed: () {
                      if (searchTextController.text.isNotEmpty) {
                        homeCubit.searchImage(
                            queryString: searchTextController.text);
                      }
                    },
                    child: Text(
                      "Search",
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontWeight: AppDimens.lfontweight,
                          color: Colors.white,
                          fontSize: AppDimens.headlineFontSizeXSmall),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          if (state is HomeLoadingState) {
            return Center(
              child: kLoadingIndicator(context: context),
            );
          } else if (state is HomeLoadedState) {
            final List<Hits> filteredImagesList =
                state.filteredImageResponseModel.take(state.count).toList();
            if (state.filteredImageResponseModel.isEmpty &&
                searchTextController.text.isEmpty) {
              return Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Icon(
                      Icons.search_outlined,
                      size: 50.h,
                      color: disabledColor,
                    ),
                    Text(
                      "'Try searching for images'",
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontSize: AppDimens.headlineFontSizeSSmall,
                          color: disabledColor),
                    ),
                  ],
                ),
              );
            } else if (state.filteredImageResponseModel.isEmpty &&
                searchTextController.text.isNotEmpty) {
              return Center(
                child: SizedBox(
                  width: 250.w,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.hide_image,
                        color: disabledColor,
                        size: 80.h,
                      ),
                      sHeightSpan,
                      Text(
                        "No result found!",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: AppDimens.headlineFontSizeSmall1,
                            fontWeight: AppDimens.lfontweight),
                      ),
                      sHeightSpan,
                      Text(
                        "We did not find any image for your search. ",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: AppDimens.headlineFontSizeXSmall,
                            color: disabledColor,
                            fontWeight: AppDimens.sfontweight),
                      ),
                    ],
                  ),
                ),
              );
            } else {
              return Column(
                children: [
                  Expanded(
                    child: GridView.builder(
                      physics: const BouncingScrollPhysics(),
                      controller: homeCubit.gridViewScrollController,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 15.0.h,
                        crossAxisSpacing: 15.0.w,
                      ),
                      padding: AppDimens.pagePadding,
                      itemCount: filteredImagesList.length,
                      itemBuilder: (context, index) {
                        final imageDetailsIndex =
                            state.filteredImageResponseModel[index];
                        return GestureDetector(
                          onTap: () => homeCubit.addToFavourite(
                            id: imageDetailsIndex.id ?? 0,
                            imageDetails: Hits(
                                id: imageDetailsIndex.id,
                                user: imageDetailsIndex.user,
                                largeImageURL: imageDetailsIndex.largeImageURL,
                                webformatHeight:
                                    imageDetailsIndex.webformatHeight,
                                webformatWidth:
                                    imageDetailsIndex.webformatWidth),
                          ),
                          child: KcachedNetworkImage(
                            imageSize: imageDetailsIndex.imageSize ?? 0,
                            imageHeight: imageDetailsIndex.webformatHeight ?? 0,
                            imageUrl: imageDetailsIndex.largeImageURL ?? '',
                            imageWidth: imageDetailsIndex.webformatWidth ?? 0,
                            user: imageDetailsIndex.user ?? "",
                            id: imageDetailsIndex.id ?? 0,
                            state: state,
                          ),
                        );
                      },
                    ),
                  ),
                  mHeightSpan,
                  state.loadMore
                      ? kLoadingIndicator(context: context)
                      : const SizedBox(),
                  mHeightSpan,
                ],
              );
            }
          }
          return const SizedBox();
        },
      ),
    );
  }
}
