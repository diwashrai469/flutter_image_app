import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignment/core/services/network_services.dart';
import 'package:flutter_assignment/core/services/toast_services.dart';
import 'package:flutter_assignment/features/home/data/model/image_response_model.dart';
import 'package:flutter_assignment/features/home/domain/usecase/home_usecase.dart';
import 'package:flutter_assignment/features/home/presentation/cubit/home_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  final HomeUsecase _homeUsercase;
  final ToastService _toastService;
  HomeCubit(this._homeUsercase, this._toastService) : super(HomeInitialstate());

  List<Hits> favouriteList = [];
  ScrollController gridViewScrollController = ScrollController();
  bool loadMore = false;
  int searchListCount = 10;

//initially fetch data in the home view
  void getHomeImages() async {
    emit(HomeLoadingState());
    var result = await _homeUsercase.getImage();
    result.fold(
      (NetworkFailure error) async {
        _toastService.e(error.message.toString());
      },
      (ImageResponseModel data) async {
        emit(
          HomeLoadedState(
              imageResponseModel: data,
              favouriteList: favouriteList,
              count: searchListCount,
              loadMore: loadMore,
              filteredImageResponseModel: const []),
        );
      },
    );
  }

// search image according to the query string
  void searchImage({
    required String queryString,
  }) async {
    ImageResponseModel imageResponseModel = const ImageResponseModel();
    if (state is HomeLoadedState) {
      final data = state as HomeLoadedState;
      imageResponseModel = data.imageResponseModel;
    }
    emit(HomeLoadingState());
    var result = await _homeUsercase.filterImage(queryString);
    result.fold(
      (NetworkFailure error) async {
        _toastService.e(error.message.toString());
      },
      (ImageResponseModel data) async {
        emit(
          HomeLoadedState(
              count: searchListCount,
              loadMore: loadMore,
              imageResponseModel: imageResponseModel,
              favouriteList: favouriteList,
              filteredImageResponseModel: data.hits ?? []),
        );
      },
    );
  }

//add images to favourite
  void addToFavourite({required int id, required Hits imageDetails}) {
    if (state is HomeLoadedState) {
      final currentHomeLoadedState = state as HomeLoadedState;
      if (!favouriteList.contains(imageDetails)) {
        emit(HomeLoadingState());
        favouriteList.add(imageDetails);
        _toastService.s("Added to favourite.");
        emit(
          HomeLoadedState(
              count: searchListCount,
              loadMore: loadMore,
              imageResponseModel: currentHomeLoadedState.imageResponseModel,
              favouriteList: currentHomeLoadedState.favouriteList,
              filteredImageResponseModel:
                  currentHomeLoadedState.filteredImageResponseModel),
        );
      }
    }
  }

//pagination to search view
  void scrollListener() async {
    final currentHomeLoadedState = state as HomeLoadedState;

    if (searchListCount <= 20) {
      if (gridViewScrollController.position.pixels ==
          gridViewScrollController.position.maxScrollExtent) {
        emit(HomeLoadingState());

        loadMore = true;
        emit(
          HomeLoadedState(
              count: searchListCount,
              loadMore: loadMore,
              imageResponseModel: currentHomeLoadedState.imageResponseModel,
              favouriteList: currentHomeLoadedState.favouriteList,
              filteredImageResponseModel:
                  currentHomeLoadedState.filteredImageResponseModel),
        );
        loadMore = false;
        searchListCount += searchListCount;
        await Future.delayed(const Duration(seconds: 3));

        emit(HomeLoadingState());

        emit(
          HomeLoadedState(
              count: searchListCount,
              loadMore: loadMore,
              imageResponseModel: currentHomeLoadedState.imageResponseModel,
              favouriteList: currentHomeLoadedState.favouriteList,
              filteredImageResponseModel:
                  currentHomeLoadedState.filteredImageResponseModel),
        );
      }
    }
  }

//Remove image from favourite view
  void removeFromFavourite({required int id, required int imageDetailsIndex}) {
    if (state is HomeLoadedState) {
      final currentHomeLoadedState = state as HomeLoadedState;
      emit(HomeLoadingState());

      favouriteList.remove(favouriteList[imageDetailsIndex]);
      _toastService.s("Removed From Favourite.");

      emit(
        HomeLoadedState(
            count: searchListCount,
            loadMore: false,
            imageResponseModel: currentHomeLoadedState.imageResponseModel,
            favouriteList: favouriteList,
            filteredImageResponseModel: const []),
      );
    }
  }
}
