import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:restaurant/application/data/models/category/category.dart';
import 'package:retrofit/retrofit.dart';

part 'categories_data_source.g.dart';

@singleton
@RestApi()
abstract class CategoriesDataSource {
  @factoryMethod
  factory CategoriesDataSource(Dio dio) = _CategoriesDataSource;

  @GET('/058729bd-1402-4578-88de-265481fd7d54')
  Future<Categories> getCategories();
}
