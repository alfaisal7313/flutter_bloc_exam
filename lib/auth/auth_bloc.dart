import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_exam/auth/auth_event.dart';
import 'package:flutter_bloc_exam/auth/auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<LoginEvent>((event, emit) async {
      emit(AuthLoading());
      await Future.delayed(const Duration(seconds: 5));
      emit(AuthSuccess(message: "Faisal"));
    });

    on<logoutEvent>((event, emit) async {
      emit(AuthLoading());
      await Future.delayed(const Duration(seconds: 5000));
      emit(AuthInitial());
    });
  }
}
