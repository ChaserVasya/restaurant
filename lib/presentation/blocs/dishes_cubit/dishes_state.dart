part of 'dishes_cubit.dart';

@freezed
class DishesState with _$DishesState {
  const factory DishesState.initial() = _Initial;
  const factory DishesState.main(List<Dish> dishes) = _Main;
  const factory DishesState.error(String e) = _Error;
}
