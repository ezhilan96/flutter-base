import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/viewmodel/viewmodel.dart';

part 'dashboard_viewmodel.freezed.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState({
    @Default(false) bool flag,
  }) = _DashboardState;
}

class DashboardViewModel extends ViewModel<DashboardState> {
  static DashboardViewModel of(BuildContext context) =>
      context.read<DashboardViewModel>();

  DashboardViewModel() : super(const DashboardState()) {
    _init();
  }

  Future<void> _init() async {}
}
