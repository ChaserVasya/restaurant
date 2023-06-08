// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:restaurant/application/di/di.dart' as _i14;
import 'package:restaurant/data/data_sources/categories_data_source/categories_data_source.dart'
    as _i11;
import 'package:restaurant/data/data_sources/dishes_data_source/dishes_data_source.dart'
    as _i5;
import 'package:restaurant/data/mappers/categories_mapper.dart' as _i3;
import 'package:restaurant/data/mappers/dishes_mapper.dart' as _i6;
import 'package:restaurant/data/repositories/dishes_repository_impl.dart'
    as _i8;
import 'package:restaurant/data/services/position_service.dart' as _i9;
import 'package:restaurant/domain/repositories/dishes_repository.dart' as _i7;
import 'package:restaurant/presentation/blocs/categories_cubit/categories_cubit.dart'
    as _i13;
import 'package:restaurant/presentation/blocs/dishes_cubit/dishes_cubit.dart'
    as _i12;
import 'package:restaurant/presentation/blocs/user_cubit/user_cubit.dart'
    as _i10;

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
    final registerModule = _$RegisterModule();
    gh.singleton<_i3.CategoriesMapper>(_i3.CategoriesMapper());
    gh.lazySingleton<_i4.Dio>(() => registerModule.dio());
    gh.singleton<_i5.DishesDataSource>(_i5.DishesDataSource(gh<_i4.Dio>()));
    gh.singleton<_i6.DishesMapper>(_i6.DishesMapper());
    gh.singleton<_i7.DishesRepository>(_i8.DishesRepositoryImpl(
      gh<_i5.DishesDataSource>(),
      gh<_i6.DishesMapper>(),
    ));
    gh.singleton<_i9.PositionService>(_i9.PositionService());
    gh.factory<_i10.UserCubit>(() => _i10.UserCubit(gh<_i9.PositionService>()));
    gh.singleton<_i11.CategoriesDataSource>(
        _i11.CategoriesDataSource(gh<_i4.Dio>()));
    gh.factory<_i12.DishesCubit>(
        () => _i12.DishesCubit(gh<_i7.DishesRepository>()));
    gh.factory<_i13.CategoriesCubit>(() => _i13.CategoriesCubit(
          gh<_i11.CategoriesDataSource>(),
          gh<_i3.CategoriesMapper>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i14.RegisterModule {}
