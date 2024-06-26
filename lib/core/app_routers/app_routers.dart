import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import "app_routers.gr.dart";

@singleton
@AutoRouterConfig()
class AppRouters extends $AppRouters {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeView.page),
        AutoRoute(page: SplashView.page, initial: true),
        AutoRoute(
          page: FavouriteView.page,
        ),
        AutoRoute(
          page: SearchImageView.page,
        )
      ];
}
