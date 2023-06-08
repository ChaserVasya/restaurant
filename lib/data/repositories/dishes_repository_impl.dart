import 'package:injectable/injectable.dart';
import 'package:restaurant/application/global.dart';
import 'package:restaurant/data/data_sources/dishes_data_source/dishes_data_source.dart';
import 'package:restaurant/data/mappers/dishes_mapper.dart';
import 'package:restaurant/data/models/dish/dish.dart';
import 'package:restaurant/domain/repositories/dishes_repository.dart';

@Singleton(as: DishesRepository)
class DishesRepositoryImpl implements DishesRepository {
  final DishesDataSource _source;
  final DishesMapper _mapper;

  bool _fetched = false;
  final _dishesByTag = <Tag, List<Dish>>{};

  DishesRepositoryImpl(this._source, this._mapper);

  @override
  Future<List<Dish>> getDishes(Tag tag) async {
    await _ensureFetched();
    return _dishesByTag[tag] ?? [];
  }

  @override
  Future<Set<Tag>> getTags() async {
    await _ensureFetched();
    return _dishesByTag.keys.toSet();
  }

  Future<void> _ensureFetched() async {
    if (!_fetched) {
      await _fetch();
    }
  }

  Future<void> _fetch() async {
    try {
      final dishes = _mapper.fromData(await _source.getDishes());

      for (final dish in dishes) {
        for (final tag in dish.tags) {
          if (_dishesByTag[tag] == null) {
            _dishesByTag[tag] = [dish];
          } else {
            _dishesByTag[tag]!.add(dish);
          }
        }
      }

      _fetched = true;
    } catch (e) {
      logger.e(e.toString());
      rethrow;
    }
  }
}
