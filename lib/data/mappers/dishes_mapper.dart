import 'package:injectable/injectable.dart';
import 'package:restaurant/data/models/dish/dish.dart';

@singleton
class DishesMapper {
  List<Dish> fromData(Dishes dishes) {
    return dishes.dishes.map(_fixBugs).toList();
  }

  Dish _fixBugs(Dish dish) {
    if (dish.imageUrl == null) {
      return dish.copyWith(
        description: 'Нет описания',
        imageUrl: dish.description,
      );
    }
    return dish;
  }
}
