import 'package:equatable/equatable.dart';
import 'package:flutter_assignment/features/home/data/model/image_response_model.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

final class HomeLoadingState extends HomeState {}

final class HomeInitialstate extends HomeState {}

final class HomeLoadedState extends HomeState {
  final ImageResponseModel imageResponseModel;
  final List<Hits> favouriteList;
  final List<Hits> filteredImageResponseModel;
  final bool loadMore;
  final int count;

  const HomeLoadedState(
      {required this.favouriteList,
      this.loadMore = false,
      required this.imageResponseModel,
      required this.count,
      required this.filteredImageResponseModel});

  @override
  List<Object> get props =>
      [imageResponseModel, favouriteList, filteredImageResponseModel];
}
