import 'dart:io';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:restaurant/application/dio_interceptors.dart';

import 'di.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies() async {
  getIt.init();

  await initializeDateFormatting(Platform.localeName);
}

@module
abstract class RegisterModule {
  @lazySingleton
  Dio dio() => wrapWithInterceptors(Dio(
        BaseOptions(baseUrl: 'https://run.mocky.io/v3'),
      ));
}
