import 'package:flutter/material.dart';

class RippleTriggerContainer extends StatefulWidget {
  const RippleTriggerContainer({
    required this.showRipple,
    required this.child,
    super.key,
  });

  final bool showRipple;
  final Widget child;

  @override
  State<RippleTriggerContainer> createState() => _RippleTriggerContainerState();
}

class _RippleTriggerContainerState extends State<RippleTriggerContainer> {
  final GlobalKey _inkWellKey =
      GlobalKey(); // Key to access InkWell's RenderBox

  @override
  void initState() {
    super.initState();

    // Add a post-frame callback to trigger the ripple effect after the first frame
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (widget.showRipple) {
        _triggerRippleEffect();
      }
    });
  }

  void _triggerRippleEffect() {
    final RenderBox? box =
        _inkWellKey.currentContext?.findRenderObject() as RenderBox?;
    if (box != null) {
      Offset position = box.localToGlobal(Offset.zero);

      // Create PointerDownEvent and PointerUpEvent to simulate a tap at the center
      Size size = box.size;
      Offset center = position + Offset(size.width / 2, size.height / 2);

      WidgetsBinding.instance.handlePointerEvent(PointerDownEvent(
        pointer: 0,
        position: center,
      ));

      WidgetsBinding.instance.handlePointerEvent(PointerUpEvent(
        pointer: 0,
        position: center,
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      key: _inkWellKey,
      child: widget.child,
      onTap: () {},
    );
  }
}
