import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../viewmodel.dart';

typedef VMBuilderCallback<VM extends Cubit<ScreenState<T>>, T> = Widget
    Function(
  BuildContext context,
  ScreenState<T> screenState,
  T state,
);

class VMBuilder<VM extends Cubit<ScreenState<T>>, T> extends StatelessWidget {
  final VMBuilderCallback<VM, T> builder;
  final BlocBuilderCondition<ScreenState<T>>? buildWhen;

  const VMBuilder({
    super.key,
    required this.builder,
    this.buildWhen,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VM, ScreenState<T>>(
      buildWhen: buildWhen,
      builder: (context, state) {
        return builder(
          context,
          state,
          state.uiState,
        );
      },
    );
  }
}
