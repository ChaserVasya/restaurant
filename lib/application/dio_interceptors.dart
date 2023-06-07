import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:restaurant/application/global.dart';

Dio wrapWithInterceptors(Dio dio) {
  return dio
    ..interceptors.addAll([
      _createLoggerInterceptor(),
      _createCachingInterceptor(),
    ]);
}

Interceptor _createLoggerInterceptor() {
  return InterceptorsWrapper(
    onRequest: (options, handler) async {
      logger.d(
        "uri: ${options.uri}\n"
        "query: ${options.queryParameters}\n"
        "body: ${options.data}",
      );
      handler.next(options);
    },
    onResponse: (response, handler) {
      logger.d(response);
      handler.next(response);
    },
    onError: (e, handler) {
      logger.d(e);
      handler.next(e);
    },
  );
}

Interceptor _createCachingInterceptor() {
  return DioCacheInterceptor(
    options: CacheOptions(
      store: MemCacheStore(),
      policy: CachePolicy.request,
      hitCacheOnErrorExcept: [401, 403],
      maxStale: const Duration(days: 7),
      priority: CachePriority.normal,
      cipher: null,
      keyBuilder: CacheOptions.defaultCacheKeyBuilder,
      allowPostMethod: false,
    ),
  );
}
