import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:restaurant/application/global.dart';
import 'package:restaurant/data/services/position_service.dart';

part 'user_cubit.freezed.dart';
part 'user_state.dart';

@injectable
class UserCubit extends Cubit<UserState> {
  final PositionService _positionService;

  UserCubit(
    this._positionService,
  ) : super(const UserState.initial()) {
    _init();
  }

  void _init() async {
    try {
      final city = await _positionService.getUserCity();
      emit(UserState.main(city));
    } catch (e) {
      final message = e.toString();
      logger.e(message);
      emit(UserState.error(message));
    }
  }
}
