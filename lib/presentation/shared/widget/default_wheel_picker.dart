import 'package:flutter/material.dart';

import '../../config/color_scheme.dart';

class DefaultWheelPicker extends StatefulWidget {
  const DefaultWheelPicker({
    required this.items,
    required this.builder,
    this.visibleItemCount = 3,
    this.onChanged,
    this.selectedIndex = 0,
    super.key,
  });

  final List<String> items;
  final Widget? Function(BuildContext context, int index, bool isSelected)
      builder;
  final int visibleItemCount;
  final void Function(int)? onChanged;
  final int selectedIndex;

  @override
  State<DefaultWheelPicker> createState() => _DefaultWheelPickerState();
}

class _DefaultWheelPickerState extends State<DefaultWheelPicker> {
  final FixedExtentScrollController _controller = FixedExtentScrollController();

  @override
  void didUpdateWidget(DefaultWheelPicker oldWidget) {
    super.didUpdateWidget(oldWidget);

    // reset selection if selected index changed to zero.
    if (widget.selectedIndex == 0) {
      _controller.jumpToItem(widget.selectedIndex);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(
        builder: (context, constraints) {
          final itemExtent = constraints.maxHeight / widget.visibleItemCount;
          return ListWheelScrollView.useDelegate(
            // remove scaling and cylinderical effect
            diameterRatio: 1000,
            controller: _controller,
            physics: const FixedExtentScrollPhysics(),
            itemExtent: itemExtent,
            onSelectedItemChanged: (value) => widget.onChanged?.call(value),
            childDelegate: ListWheelChildBuilderDelegate(
              builder: (context, index) {
                final isSelected = index == widget.selectedIndex;
                return GestureDetector(
                  onTap: () => setState(() => _controller.jumpToItem(index)),
                  child: widget.builder(context, index, isSelected),
                );
              },
              childCount: widget.items.length,
            ),
          );
        },
      ),
    );
  }
}

class DefaultWheelItem extends StatelessWidget {
  const DefaultWheelItem(this.list, this.index, this.isSelected, {super.key});

  final List<String> list;
  final int index;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        list[index],
        style: TextStyle(
          color:
              isSelected ? CustomColors.textWhite : CustomColors.textDisabled,
        ),
        maxLines: 1,
      ),
    );
  }
}
