import 'package:injectable/injectable.dart';
import 'package:restaurant/data/models/category/category.dart';

@singleton
class CategoriesMapper {
  List<Category> fromData(Categories categories) {
    return categories.categories;
  }
}
