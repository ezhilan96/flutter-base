import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../viewmodel.dart';

typedef VMConsumerListener<VM extends Cubit<ScreenState<T>>, T> = void Function(
  BuildContext context,
  ScreenState<T> state,
  T uiState,
);

typedef VMConsumerBuilder<VM extends Cubit<ScreenState<T>>, T> = Widget
    Function(
  BuildContext context,
  ScreenState<T> state,
  T uiState,
);

class VMConsumer<VM extends Cubit<ScreenState<T>>, T> extends StatelessWidget {
  final VMConsumerListener<VM, T> listener;
  final VMConsumerBuilder<VM, T> builder;
  final BlocListenerCondition<ScreenState<T>>? listenWhen;
  final BlocBuilderCondition<ScreenState<T>>? buildWhen;

  const VMConsumer({
    super.key,
    required this.listener,
    required this.builder,
    this.listenWhen,
    this.buildWhen,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<VM, ScreenState<T>>(
      listenWhen: listenWhen,
      buildWhen: buildWhen,
      listener: (context, state) {
        listener(context, state, state.uiState);
      },
      builder: (context, state) {
        return builder(context, state, state.uiState);
      },
    );
  }
}
