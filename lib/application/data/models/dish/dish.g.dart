// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dish.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Dishes _$$_DishesFromJson(Map<String, dynamic> json) => _$_Dishes(
      dishes: (json['dishes'] as List<dynamic>)
          .map((e) => Dish.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DishesToJson(_$_Dishes instance) => <String, dynamic>{
      'dishes': instance.dishes,
    };

_$_Dish _$$_DishFromJson(Map<String, dynamic> json) => _$_Dish(
      id: json['id'] as int,
      name: json['name'] as String,
      weight: json['weight'] as int,
      price: json['price'] as int,
      description: json['description'] as String,
      imageUrl: json['image_url'] as String,
      tags: (json['tegs'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_DishToJson(_$_Dish instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'weight': instance.weight,
      'price': instance.price,
      'description': instance.description,
      'image_url': instance.imageUrl,
      'tegs': instance.tags,
    };
