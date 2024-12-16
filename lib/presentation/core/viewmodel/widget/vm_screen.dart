import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../config/color_scheme.dart';
import '../../../shared/dialog/default_alert_dialog.dart';
import '../viewmodel.dart';
import 'vm_builder.dart';

class VMScreen<Viewmodel extends ViewModel<State>, State>
    extends StatelessWidget {
  const VMScreen({
    required this.createViewModel,
    required this.builder,
    this.stateListener,
    this.progressIndicator,
    super.key,
  });

  final Viewmodel Function(BuildContext context) createViewModel;
  final Widget Function(BuildContext, ScreenState<State>, State) builder;
  final void Function(BuildContext, ScreenState<State>)? stateListener;
  final Widget? progressIndicator;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: createViewModel,
      child: BlocListener<Viewmodel, ScreenState<State>>(
        listener: (context, state) {
          if (state.navigationStack.contains(AlertType.dialog)) {
            showAlertDialog(
              context: context,
              message: state.message,
              negativeButtonAction: () => Navigator.pop(context),
            );
            context.read<Viewmodel>().dismiss();
          }

          if (state.navigationStack.contains(AlertType.toast)) {
            Fluttertoast.showToast(
              msg: state.message,
              toastLength: Toast.LENGTH_LONG,
              gravity: ToastGravity.BOTTOM,
            );
            context.read<Viewmodel>().dismiss();
          }

          stateListener?.call(context, state);
        },
        child: VMBuilder<Viewmodel, State>(
          builder: (context, screenState, state) {
            return Stack(
              children: [
                IgnorePointer(
                  ignoring: screenState.isLoading,
                  child: builder(context, screenState, state),
                ),
                if (screenState.isLoading)
                  progressIndicator ??
                      Container(
                        color: CustomColors.white.withAlpha(190),
                        child: Center(child: CircularProgressIndicator()),
                      ),
              ],
            );
          },
        ),
      ),
    );
  }
}
