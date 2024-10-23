import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../viewmodel.dart';

typedef VMListenerCallback<VM extends Cubit<ScreenState<T>>, T> = void Function(
  BuildContext context,
  ScreenState<T> state,
  T uiState,
);

class VMListener<VM extends Cubit<ScreenState<T>>, T> extends StatelessWidget {
  final VMListenerCallback<VM, T> listener;
  final Widget child;
  final BlocListenerCondition<ScreenState<T>>? listenWhen;

  const VMListener({
    super.key,
    required this.listener,
    required this.child,
    this.listenWhen,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<VM, ScreenState<T>>(
      listenWhen: listenWhen,
      listener: (context, state) {
        listener(context, state, state.uiState);
      },
      child: child,
    );
  }
}
