// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;
import 'package:flutter_assignment/features/home/presentation/cubit/home_cubit.dart'
    as _i7;
import 'package:flutter_assignment/features/home/presentation/view/home_view.dart'
    as _i2;
import 'package:flutter_assignment/features/home/presentation/view/widgets/favourite_view.dart'
    as _i1;
import 'package:flutter_assignment/features/home/presentation/view/widgets/search_image.dart'
    as _i3;
import 'package:flutter_assignment/features/splash/presentation/view/splash_view.dart'
    as _i4;

abstract class $AppRouters extends _i5.RootStackRouter {
  $AppRouters({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    FavouriteView.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.FavouriteView(),
      );
    },
    HomeView.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.HomeView(),
      );
    },
    SearchImageView.name: (routeData) {
      final args = routeData.argsAs<SearchImageViewArgs>();
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.SearchImageView(
          key: args.key,
          homeCubit: args.homeCubit,
        ),
      );
    },
    SplashView.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.SplashView(),
      );
    },
  };
}

/// generated route for
/// [_i1.FavouriteView]
class FavouriteView extends _i5.PageRouteInfo<void> {
  const FavouriteView({List<_i5.PageRouteInfo>? children})
      : super(
          FavouriteView.name,
          initialChildren: children,
        );

  static const String name = 'FavouriteView';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i2.HomeView]
class HomeView extends _i5.PageRouteInfo<void> {
  const HomeView({List<_i5.PageRouteInfo>? children})
      : super(
          HomeView.name,
          initialChildren: children,
        );

  static const String name = 'HomeView';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i3.SearchImageView]
class SearchImageView extends _i5.PageRouteInfo<SearchImageViewArgs> {
  SearchImageView({
    _i6.Key? key,
    required _i7.HomeCubit homeCubit,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          SearchImageView.name,
          args: SearchImageViewArgs(
            key: key,
            homeCubit: homeCubit,
          ),
          initialChildren: children,
        );

  static const String name = 'SearchImageView';

  static const _i5.PageInfo<SearchImageViewArgs> page =
      _i5.PageInfo<SearchImageViewArgs>(name);
}

class SearchImageViewArgs {
  const SearchImageViewArgs({
    this.key,
    required this.homeCubit,
  });

  final _i6.Key? key;

  final _i7.HomeCubit homeCubit;

  @override
  String toString() {
    return 'SearchImageViewArgs{key: $key, homeCubit: $homeCubit}';
  }
}

/// generated route for
/// [_i4.SplashView]
class SplashView extends _i5.PageRouteInfo<void> {
  const SplashView({List<_i5.PageRouteInfo>? children})
      : super(
          SplashView.name,
          initialChildren: children,
        );

  static const String name = 'SplashView';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}
