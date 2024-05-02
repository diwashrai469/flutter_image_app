import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignment/common/constant/app_images.dart';
import 'package:flutter_assignment/core/app_routers/app_routers.dart';
import 'package:flutter_assignment/core/injection/injection.dart';

import '../../../../core/app_routers/app_routers.gr.dart';

@RoutePage()
class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with TickerProviderStateMixin {
  late Animation<double> logoAnimation;
  late AnimationController logoController;
  @override
  void initState() {
    logoController = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );

    logoAnimation = Tween(begin: 0.2, end: 0.30).animate(
      CurvedAnimation(
        parent: logoController,
        curve: Curves.elasticOut,
      ),
    );
    logoController.forward().then((value) => {
          locator<AppRouters>().pushAndPopUntil(
            const HomeView(),
            predicate: (route) => false,
          )
        });

    super.initState();
  }

  @override
  void dispose() {
    logoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
          animation: logoAnimation,
          builder: (context, child) {
            return Image.asset(
              AppImage.logo,
              height: 300,
              width:
                  MediaQuery.of(context).size.width / 1.2 * logoAnimation.value,
            );
          },
        ),
      ),
    );
  }
}
