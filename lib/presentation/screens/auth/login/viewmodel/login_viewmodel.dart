import 'package:flutter/widgets.dart';
import 'package:flutter_base/core/di/injectable.dart';
import 'package:flutter_base/data/dto/request/login/login_dto.dart';
import 'package:flutter_base/domain/usecase/auth_actions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/viewmodel/viewmodel.dart';

part 'login_viewmodel.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default(false) bool flag,
  }) = _LoginState;
}

class LoginViewModel extends ViewModel<LoginState> {
  static LoginViewModel of(BuildContext context) =>
      context.read<LoginViewModel>();

  LoginViewModel()
      : _authActions = getIt<AuthActions>(),
        super(const LoginState()) {
    _init();
  }

  final AuthActions _authActions;

  void _init() {
    final loginRequest = LoginDto(id: uiState.flag ? 1 : 2);
    _authActions.login(loginRequest).handleDataResponse(
          this,
          onSuccess: (userDetails) =>
              setUiState(uiState.copyWith(flag: userDetails?.id == 1)),
        );
  }
}
