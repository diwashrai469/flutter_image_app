import 'package:flutter/material.dart';
import 'package:flutter_assignment/common/constant/app_dimens.dart';
import 'package:flutter_assignment/core/app_routers/app_routers.dart';
import 'package:flutter_assignment/core/injection/injection.dart';
import 'package:flutter_assignment/features/home/presentation/cubit/home_cubit.dart';
import 'package:flutter_assignment/theme/app_theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oktoast/oktoast.dart';

void main() async {
  setupLocator();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final homeCubit = locator<HomeCubit>();

    return BlocProvider(
      create: (cxt) {
        homeCubit.getHomeImages();
        return homeCubit;
      },
      child: OKToast(
        position: ToastPosition.bottom,
        child: ScreenUtilInit(
          designSize: const Size(AppDimens.appWidth, AppDimens.appHeight),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (_, child) => MaterialApp.router(
            theme: AppThemes.light,
            routerConfig: locator<AppRouters>().config(),
            debugShowCheckedModeBanner: false,
          ),
        ),
      ),
    );
  }
}
