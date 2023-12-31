// ignore_for_file: public_member_api_docs, sort_constructors_first
abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class AuthSuccess extends AuthState {
  final String message;
  AuthSuccess({
    required this.message,
  });
}

class AuthError extends AuthState {
  final String message;
  AuthError({
    required this.message,
  });
}
