import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

enum Status { initial, loading, success, error }

@freezed
abstract class AuthState implements _$AuthState {
  const factory AuthState({
    required Status status,
  }) = _AuthState;

  factory AuthState.initial() {
    return const AuthState(
      status: Status.initial,
    );
  }
}
