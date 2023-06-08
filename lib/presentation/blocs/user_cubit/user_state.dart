part of 'user_cubit.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.initial() = _Initial;
  const factory UserState.main(String city) = _Main;
  const factory UserState.error(String message) = _Error;
}
