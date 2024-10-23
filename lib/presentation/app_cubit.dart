import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_base/domain/usecase/auth_actions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/di/injectable.dart';
import '../domain/entity/app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit()
      : _authActions = getIt<AuthActions>(),
        super(Initial()) {
    _appStateSubscription =
        _authActions.appState.listen((appState) => emit(appState));
    final connectivity = Connectivity();
    _connectivitySubscription =
        connectivity.onConnectivityChanged.listen((connectivityResult) {
      emit(NetworkConnectionChange(
          !connectivityResult.contains(ConnectivityResult.none)));
    });
  }
  final AuthActions _authActions;
  late StreamSubscription<AppState> _appStateSubscription;
  late StreamSubscription<List<ConnectivityResult>> _connectivitySubscription;

  @override
  Future<void> close() {
    _appStateSubscription.cancel();
    _connectivitySubscription.cancel();
    return super.close();
  }
}
