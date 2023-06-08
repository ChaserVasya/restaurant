// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dish.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Dishes _$DishesFromJson(Map<String, dynamic> json) {
  return _Dishes.fromJson(json);
}

/// @nodoc
mixin _$Dishes {
  List<Dish> get dishes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DishesCopyWith<Dishes> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DishesCopyWith<$Res> {
  factory $DishesCopyWith(Dishes value, $Res Function(Dishes) then) =
      _$DishesCopyWithImpl<$Res, Dishes>;
  @useResult
  $Res call({List<Dish> dishes});
}

/// @nodoc
class _$DishesCopyWithImpl<$Res, $Val extends Dishes>
    implements $DishesCopyWith<$Res> {
  _$DishesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dishes = null,
  }) {
    return _then(_value.copyWith(
      dishes: null == dishes
          ? _value.dishes
          : dishes // ignore: cast_nullable_to_non_nullable
              as List<Dish>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DishesCopyWith<$Res> implements $DishesCopyWith<$Res> {
  factory _$$_DishesCopyWith(_$_Dishes value, $Res Function(_$_Dishes) then) =
      __$$_DishesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Dish> dishes});
}

/// @nodoc
class __$$_DishesCopyWithImpl<$Res>
    extends _$DishesCopyWithImpl<$Res, _$_Dishes>
    implements _$$_DishesCopyWith<$Res> {
  __$$_DishesCopyWithImpl(_$_Dishes _value, $Res Function(_$_Dishes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dishes = null,
  }) {
    return _then(_$_Dishes(
      dishes: null == dishes
          ? _value._dishes
          : dishes // ignore: cast_nullable_to_non_nullable
              as List<Dish>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Dishes implements _Dishes {
  const _$_Dishes({required final List<Dish> dishes}) : _dishes = dishes;

  factory _$_Dishes.fromJson(Map<String, dynamic> json) =>
      _$$_DishesFromJson(json);

  final List<Dish> _dishes;
  @override
  List<Dish> get dishes {
    if (_dishes is EqualUnmodifiableListView) return _dishes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dishes);
  }

  @override
  String toString() {
    return 'Dishes(dishes: $dishes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Dishes &&
            const DeepCollectionEquality().equals(other._dishes, _dishes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_dishes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DishesCopyWith<_$_Dishes> get copyWith =>
      __$$_DishesCopyWithImpl<_$_Dishes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DishesToJson(
      this,
    );
  }
}

abstract class _Dishes implements Dishes {
  const factory _Dishes({required final List<Dish> dishes}) = _$_Dishes;

  factory _Dishes.fromJson(Map<String, dynamic> json) = _$_Dishes.fromJson;

  @override
  List<Dish> get dishes;
  @override
  @JsonKey(ignore: true)
  _$$_DishesCopyWith<_$_Dishes> get copyWith =>
      throw _privateConstructorUsedError;
}

Dish _$DishFromJson(Map<String, dynamic> json) {
  return _Dish.fromJson(json);
}

/// @nodoc
mixin _$Dish {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get weight => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'tegs')
  List<String> get tags => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DishCopyWith<Dish> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DishCopyWith<$Res> {
  factory $DishCopyWith(Dish value, $Res Function(Dish) then) =
      _$DishCopyWithImpl<$Res, Dish>;
  @useResult
  $Res call(
      {int id,
      String name,
      int weight,
      int price,
      String description,
      @JsonKey(name: 'image_url') String imageUrl,
      @JsonKey(name: 'tegs') List<String> tags});
}

/// @nodoc
class _$DishCopyWithImpl<$Res, $Val extends Dish>
    implements $DishCopyWith<$Res> {
  _$DishCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? weight = null,
    Object? price = null,
    Object? description = null,
    Object? imageUrl = null,
    Object? tags = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DishCopyWith<$Res> implements $DishCopyWith<$Res> {
  factory _$$_DishCopyWith(_$_Dish value, $Res Function(_$_Dish) then) =
      __$$_DishCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      int weight,
      int price,
      String description,
      @JsonKey(name: 'image_url') String imageUrl,
      @JsonKey(name: 'tegs') List<String> tags});
}

/// @nodoc
class __$$_DishCopyWithImpl<$Res> extends _$DishCopyWithImpl<$Res, _$_Dish>
    implements _$$_DishCopyWith<$Res> {
  __$$_DishCopyWithImpl(_$_Dish _value, $Res Function(_$_Dish) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? weight = null,
    Object? price = null,
    Object? description = null,
    Object? imageUrl = null,
    Object? tags = null,
  }) {
    return _then(_$_Dish(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Dish implements _Dish {
  const _$_Dish(
      {required this.id,
      required this.name,
      required this.weight,
      required this.price,
      required this.description,
      @JsonKey(name: 'image_url') required this.imageUrl,
      @JsonKey(name: 'tegs') required final List<String> tags})
      : _tags = tags;

  factory _$_Dish.fromJson(Map<String, dynamic> json) => _$$_DishFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int weight;
  @override
  final int price;
  @override
  final String description;
  @override
  @JsonKey(name: 'image_url')
  final String imageUrl;
  final List<String> _tags;
  @override
  @JsonKey(name: 'tegs')
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  String toString() {
    return 'Dish(id: $id, name: $name, weight: $weight, price: $price, description: $description, imageUrl: $imageUrl, tags: $tags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Dish &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, weight, price,
      description, imageUrl, const DeepCollectionEquality().hash(_tags));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DishCopyWith<_$_Dish> get copyWith =>
      __$$_DishCopyWithImpl<_$_Dish>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DishToJson(
      this,
    );
  }
}

abstract class _Dish implements Dish {
  const factory _Dish(
      {required final int id,
      required final String name,
      required final int weight,
      required final int price,
      required final String description,
      @JsonKey(name: 'image_url') required final String imageUrl,
      @JsonKey(name: 'tegs') required final List<String> tags}) = _$_Dish;

  factory _Dish.fromJson(Map<String, dynamic> json) = _$_Dish.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get weight;
  @override
  int get price;
  @override
  String get description;
  @override
  @JsonKey(name: 'image_url')
  String get imageUrl;
  @override
  @JsonKey(name: 'tegs')
  List<String> get tags;
  @override
  @JsonKey(ignore: true)
  _$$_DishCopyWith<_$_Dish> get copyWith => throw _privateConstructorUsedError;
}
