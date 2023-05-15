import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:mini_project_data_on/feature/login/presentation/blocs/auth_bloc/auth_event.dart';
import 'package:mini_project_data_on/feature/login/presentation/blocs/auth_bloc/auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthState.initial()) {
    on<Login>(_onLogin);
    //on<LoadUsers>(_onLoadUsers);
  }

  final String email = 'anas@gmail.com';
  final String password = '123456';

  FutureOr<void> _onLogin(
    Login event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(status: Status.loading));
    if (event.email == email && event.password == password) {
      emit(
        state.copyWith(status: Status.success),
      );
      emit(
        state.copyWith(status: Status.initial),
      );
    } else {
      emit(
        state.copyWith(status: Status.error),
      );
      emit(
        state.copyWith(status: Status.initial),
      );
    }
  }
}
