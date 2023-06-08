import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:restaurant/data/models/dish/dish.dart';
import 'package:retrofit/retrofit.dart';

part 'dishes_data_source.g.dart';

@singleton
@RestApi()
abstract class DishesDataSource {
  @factoryMethod
  factory DishesDataSource(Dio dio) = _DishesDataSource;

  @GET('/c7a508f2-a904-498a-8539-09d96785446e')
  Future<Dishes> getDishes();
}
