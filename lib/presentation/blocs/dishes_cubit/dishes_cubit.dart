import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:restaurant/application/global.dart';
import 'package:restaurant/data/data_sources/dishes_data_source/dishes_data_source.dart';
import 'package:restaurant/data/mappers/dishes_mapper.dart';
import 'package:restaurant/data/models/dish/dish.dart';

part 'dishes_cubit.freezed.dart';
part 'dishes_state.dart';

@injectable
class DishesCubit extends Cubit<DishesState> {
  final DishesDataSource _source;
  final DishesMapper _mapper;

  DishesCubit(
    this._source,
    this._mapper,
  ) : super(const DishesState.initial()) {
    _init();
  }

  void _init() async {
    try {
      final dishes = await _source.getDishes();
      emit(DishesState.main(_mapper.fromData(dishes)));
    } catch (e) {
      final message = e.toString();
      logger.e(message);
      emit(DishesState.error(message));
    }
  }
}
