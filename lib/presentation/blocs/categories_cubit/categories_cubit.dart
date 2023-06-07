import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:restaurant/application/data/data_sources/categories_data_source/categories_data_source.dart';
import 'package:restaurant/application/data/mappers/categories_mapper.dart';
import 'package:restaurant/application/data/models/category/category.dart';

part 'categories_cubit.freezed.dart';
part 'categories_state.dart';

@injectable
class CategoriesCubit extends Cubit<CategoriesState> {
  final CategoriesDataSource _source;
  final CategoriesMapper _mapper;

  CategoriesCubit(
    this._source,
    this._mapper,
  ) : super(const CategoriesState.initial()) {
    _init();
  }

  void _init() async {
    try {
      final categories = await _source.getCategories();
      emit(CategoriesState.main(_mapper.fromData(categories)));
    } catch (e) {
      emit(CategoriesState.error(e.toString()));
    }
  }
}
