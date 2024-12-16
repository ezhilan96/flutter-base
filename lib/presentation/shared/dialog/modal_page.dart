import 'package:flutter/material.dart';

class ModalPage<T> extends Page<T> {
  final bool barrierDismissible;
  final Color? barrierColor;
  final String? barrierLabel;
  final bool useSafeArea;
  final Offset? anchorPoint;
  final TraversalEdgeBehavior? traversalEdgeBehavior;
  final WidgetBuilder builder;

  const ModalPage({
    required this.builder,
    this.barrierDismissible = false,
    this.barrierColor,
    this.barrierLabel,
    this.useSafeArea = true,
    this.anchorPoint,
    this.traversalEdgeBehavior,
  });

  @override
  Route<T> createRoute(BuildContext context) => DialogRoute<T>(
        context: context,
        builder: builder,
        barrierColor: barrierColor ?? Colors.black.withAlpha(217),
        barrierDismissible: barrierDismissible,
        barrierLabel: barrierLabel,
        useSafeArea: useSafeArea,
        settings: this,
        anchorPoint: anchorPoint,
        traversalEdgeBehavior:
            traversalEdgeBehavior ?? TraversalEdgeBehavior.closedLoop,
      );
}
