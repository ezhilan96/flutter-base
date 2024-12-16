import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/constants.dart';
import '../../../data/core/data_response.dart';

part 'viewmodel.freezed.dart';

enum AlertType {
  toast,
  dialog,
}

@freezed
class ScreenState<T> with _$ScreenState<T> {
  const factory ScreenState({
    @Default(false) bool isLoading,
    @Default([]) List<Enum> navigationStack,
    @Default('') String message,
    required T uiState,
  }) = _ScreenState<T>;
}

abstract class ViewModel<T> extends Cubit<ScreenState<T>> {
  ViewModel(T initialState) : super(ScreenState<T>(uiState: initialState)) {
    _errorCallback = (String error) => showAlert(AlertType.dialog, error);
  }

  late void Function(String error) _errorCallback;
  final List<StreamSubscription> _subscriptions = [];

  @protected
  T get uiState => state.uiState;

  @protected
  void setUiState(T uiState) {
    if (!isClosed) {
      emit(state.copyWith(uiState: uiState));
    }
  }

  @protected
  void setLoading(bool isLoading) {
    if (!isClosed) {
      emit(state.copyWith(isLoading: isLoading));
    }
  }

  @protected
  void showAlert([
    AlertType alertType = AlertType.dialog,
    String message = StringRes.defaultError,
  ]) {
    if (!isClosed) {
      emit(state.copyWith(message: message));
    }
    postNavItem(alertType);
  }

  @protected
  void postNavItem(Enum navigationItem) {
    if (!isClosed) {
      emit(state.copyWith(
          navigationStack: List.of(state.navigationStack)
            ..add(navigationItem)));
      emit(state.copyWith(
          navigationStack: List.of(state.navigationStack)
            ..remove(navigationItem)));
    }
  }

  void dismiss([Enum? navigationItem]) {
    final updatedNavigationStack = List.of(state.navigationStack);
    if (navigationItem == null) {
      if (updatedNavigationStack.isNotEmpty) {
        updatedNavigationStack.removeLast();
      }
    } else {
      if (updatedNavigationStack.contains(navigationItem)) {
        updatedNavigationStack.remove(navigationItem);
      }
    }
    if (!isClosed) {
      emit(state.copyWith(navigationStack: updatedNavigationStack));
    }
  }

  void dismissAll() {
    if (!isClosed) {
      emit(state.copyWith(
        isLoading: false,
        navigationStack: [],
        message: '',
      ));
    }
  }

  @override
  Future<void> close() {
    dismissAll();
    for (var subscription in _subscriptions) {
      subscription.cancel();
    }
    return super.close();
  }
}

extension DataResponseStreamExt<T> on Stream<DataResponse<T>> {
  void handleDataResponse(
    ViewModel viewModel, {
    void Function(T data)? onSuccess,
    void Function(String error)? onError,
    void Function()? onComplete,
  }) {
    viewModel._subscriptions.add(
      listen(
        (dataResponse) {
          dataResponse.mapResponse(
            (data) {
              viewModel.setLoading(false);
              onSuccess?.call(data);
              onComplete?.call();
            },
            (error) {
              viewModel.setLoading(false);
              (onError ?? viewModel._errorCallback).call(error);
              onComplete?.call();
            },
            () {
              viewModel.setLoading(true);
            },
          );
        },
      ),
    );
  }
}
