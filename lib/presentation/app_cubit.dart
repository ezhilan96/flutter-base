import 'dart:async';

import 'package:flutter_base/domain/usecase/auth_actions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/di/injectable.dart';
import '../domain/entity/app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit()
      : _authActions = getIt<AuthActions>(),
        super(Initial()) {
    _appStateSubscription = _authActions.appState.listen((appState) {
      emit(appState);
    });
  }

  final AuthActions _authActions;
  late StreamSubscription<AppState> _appStateSubscription;

  @override
  Future<void> close() {
    _appStateSubscription.cancel();
    return super.close();
  }
}
