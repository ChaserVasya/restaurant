import 'package:restaurant/data/models/dish/dish.dart';

typedef Tag = String;

abstract class DishesRepository {
  Future<List<Dish>> getDishes(Tag tag);

  Future<Set<Tag>> getTags();
}
