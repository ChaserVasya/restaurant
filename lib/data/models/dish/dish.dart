// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'dish.freezed.dart';
part 'dish.g.dart';

@freezed
class Dishes with _$Dishes {
  const factory Dishes({
    required List<Dish> dishes,
  }) = _Dishes;

  factory Dishes.fromJson(Map<String, dynamic> json) => _$DishesFromJson(json);
}

@freezed
class Dish with _$Dish {
  const factory Dish({
    required int id,
    required String name,
    required int weight,
    required int price,
    required String description,
    @JsonKey(name: 'image_url') required String imageUrl,
    @JsonKey(name: 'tegs') required List<String> tags,
  }) = _Dish;

  factory Dish.fromJson(Map<String, dynamic> json) => _$DishFromJson(json);
}
