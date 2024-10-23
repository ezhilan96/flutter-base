import 'package:flutter_base/data/core/utils.dart';
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
    _errorCallback = (String error) {
      emit(
        state.copyWith(
          navigationStack: List.of(state.navigationStack)
            ..add(AlertType.dialog),
          message: error,
        ),
      );
    };
  }

  late void Function(String error) _errorCallback;

  @protected
  T get uiState => state.uiState;

  @protected
  void setUiState(T uiState) => emit(state.copyWith(uiState: uiState));

  @protected
  void setLoading(bool isLoading) => emit(state.copyWith(isLoading: isLoading));

  @protected
  void showAlert([
    AlertType alertType = AlertType.dialog,
    String message = StringRes.defaultError,
  ]) {
    emit(
      state.copyWith(
        navigationStack: List.of(state.navigationStack)..add(alertType),
        message: message,
      ),
    );
  }

  void pushNavStack(Enum navigationItem) {
    emit(
      state.copyWith(
        navigationStack: List.of(state.navigationStack)..add(navigationItem),
      ),
    );
  }

  void popNavStack([Enum? navigationItem]) {
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
    emit(
      state.copyWith(
        navigationStack: updatedNavigationStack,
      ),
    );
  }

  void dismissAll() => emit(state.copyWith(
        isLoading: false,
        navigationStack: [],
        message: '',
      ));

  @override
  Future<void> close() {
    dismissAll();
    return super.close();
  }
}

extension DataResponseStreamExt<T> on Stream<DataResponse<T>> {
  Future<void> handleDataResponseUi(
    ViewModel viewModel, {
    void Function(T data)? onSuccess,
    void Function(String error)? onError,
  }) async {
    listen(
      (dataResponse) {
        dataResponse.mapResponse(
          (data) {
            viewModel.setLoading(false);
            onSuccess?.call(data);
          },
          (error) {
            viewModel.setLoading(false);
            (onError ?? viewModel._errorCallback).call(error);
          },
          () => viewModel.setLoading(true),
        );
      },
    );
  }
}
