part of 'user_bloc.dart';

abstract class UserState {}

class UserInitial extends UserState {}

class ReceivedUserData extends UserState {
  User user;
  ReceivedUserData({required this.user});
}

class UpdatedUser extends UserState {
  bool isUpdate;
  String message;
  UpdatedUser({required this.isUpdate, required this.message});
}
