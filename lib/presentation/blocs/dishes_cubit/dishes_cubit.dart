import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:restaurant/data/models/dish/dish.dart';
import 'package:restaurant/domain/repositories/dishes_repository.dart';

part 'dishes_cubit.freezed.dart';
part 'dishes_state.dart';

@injectable
class DishesCubit extends Cubit<DishesState> {
  final DishesRepository _repo;

  DishesCubit(this._repo) : super(const DishesState.initial()) {
    _init();
  }

  void getDishesByTag(Tag tag) async {
    await _catchError(() async {
      final dishes = await _repo.getDishes(tag);
      emit(state.maybeWhen(
        main: (_, __, tags) => DishesState.main(
          dishes: dishes,
          currentTag: tag,
          tags: tags,
        ),
        orElse: () => const DishesState.error('Unexpected state'),
      ));
    });
  }

  void _init() async {
    await _catchError(() async {
      const tag = 'Все меню';
      final dishes = await _repo.getDishes(tag);
      final tags = await _repo.getTags();
      emit(DishesState.main(
        dishes: dishes,
        tags: tags,
        currentTag: tag,
      ));
    });
  }

  Future<void> _catchError(FutureOr Function() fn) async {
    try {
      await fn();
    } catch (e) {
      emit(DishesState.error(e.toString()));
    }
  }
}
