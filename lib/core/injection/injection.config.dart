// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_assignment/core/app_routers/app_routers.dart' as _i4;
import 'package:flutter_assignment/core/services/intercepters.dart' as _i3;
import 'package:flutter_assignment/core/services/toast_services.dart' as _i5;
import 'package:flutter_assignment/features/home/data/repository/home_repository_impl.dart'
    as _i8;
import 'package:flutter_assignment/features/home/data/services/home_services.dart'
    as _i6;
import 'package:flutter_assignment/features/home/domain/repository/home_respository.dart'
    as _i7;
import 'package:flutter_assignment/features/home/domain/usecase/home_usecase.dart'
    as _i9;
import 'package:flutter_assignment/features/home/presentation/cubit/home_cubit.dart'
    as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.DioService>(() => _i3.DioService());
    gh.singleton<_i4.AppRouters>(() => _i4.AppRouters());
    gh.lazySingleton<_i5.ToastService>(() => _i5.ToastService());
    gh.factory<_i6.HomeServices>(() => _i6.HomeServices(gh<_i3.DioService>()));
    gh.factory<_i7.IHomeRepository>(
        () => _i8.HomeRepository(gh<_i6.HomeServices>()));
    gh.factory<_i9.HomeUsecase>(
        () => _i9.HomeUsecase(gh<_i7.IHomeRepository>()));
    gh.factory<_i10.HomeCubit>(() => _i10.HomeCubit(
          gh<_i9.HomeUsecase>(),
          gh<_i5.ToastService>(),
        ));
    return this;
  }
}
