part of 'dishes_cubit.dart';

@freezed
class DishesState with _$DishesState {
  const factory DishesState.initial() = _Initial;
  const factory DishesState.main({
    required List<Dish> dishes,
    required Tag currentTag,
    required Set<Tag> tags,
  }) = _Main;
  const factory DishesState.error(String e) = _Error;
}
