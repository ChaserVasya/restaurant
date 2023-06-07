import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant/application/data/services/position_service.dart';

part 'user_cubit.freezed.dart';
part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  final PositionService _positionService;

  UserCubit(
    this._positionService,
  ) : super(const UserState.initial()) {
    _init();
  }

  void _init() async {
    final city = await _positionService.getUserCity();
  }
}
