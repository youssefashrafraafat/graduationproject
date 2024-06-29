part of 'user_cubit.dart';

@immutable
sealed class UserState {}

final class UserInitial extends UserState {}

final class UserLoading extends UserState {}

final class UserSuccess extends UserState {
  final UserData user;
  UserSuccess(this.user);
}

final class UserFailure extends UserState {
  final String errMessage;

  UserFailure({required this.errMessage});
}
