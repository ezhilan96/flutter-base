import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class WidgetSizeListner extends StatefulWidget {
  const WidgetSizeListner({
    super.key,
    required this.child,
    required this.onSizeChange,
  });

  final Widget child;
  final void Function(Size size) onSizeChange;

  @override
  State<WidgetSizeListner> createState() => _WidgetSizeListnerState();
}

class _WidgetSizeListnerState extends State<WidgetSizeListner> {
  final GlobalKey _key = GlobalKey();
  Size? _oldSize;

  @override
  Widget build(BuildContext context) {
    SchedulerBinding.instance.addPostFrameCallback(_postFrameCallback);
    return Container(
      key: _key,
      child: widget.child,
    );
  }

  void _postFrameCallback(_) {
    final RenderBox renderBox = context.findRenderObject() as RenderBox;
    final size = renderBox.size;

    // Check if the size has changed before calling setState
    if (_oldSize == null || _oldSize != size) {
      _oldSize = size;
      widget.onSizeChange(size);
    }
  }
}
