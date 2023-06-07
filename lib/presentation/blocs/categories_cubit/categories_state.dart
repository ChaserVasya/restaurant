part of 'categories_cubit.dart';

@freezed
class CategoriesState with _$CategoriesState {
  const factory CategoriesState.initial() = _Initial;
  const factory CategoriesState.main(List<Category> categories) = _Main;
  const factory CategoriesState.error(String e) = _Error;
}
