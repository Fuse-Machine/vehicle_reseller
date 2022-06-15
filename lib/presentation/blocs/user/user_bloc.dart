import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vehicle_reseller/data/model/user/user.dart';
import 'package:vehicle_reseller/data/repositories/preferences.dart';
part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  var tecName = TextEditingController();
  var tecPhone = TextEditingController();
  var tecEmail = TextEditingController();

  UserBloc() : super(UserInitial()) {
    on<UserEvent>((event, emit) async {
      if (event is FetchUser) {
        try {
          User user = await Preferences().getUser();

          emit(ReceivedUserData(user: user));
        } catch (error) {
          log('Error: ${error.toString()}');
        }
      }
      if (event is UpdateUser) {
        try {
          User user = User(
              name: tecName.text, phone: tecPhone.text, email: tecEmail.text);
          await Preferences().setUser(user);
          emit(UpdatedUser(
              isUpdate: true, message: 'Your details have been Updated'));
        } catch (error) {
          emit(UpdatedUser(isUpdate: false, message: error.toString()));
        }
      }
    });
  }
}
