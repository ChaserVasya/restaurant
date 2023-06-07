import 'package:injectable/injectable.dart';
import 'package:restaurant/application/data/models/dish/dish.dart';

@singleton
class DishesMapper {
  List<Dish> fromData(Dishes dishes) {
    return dishes.dishes;
  }
}
