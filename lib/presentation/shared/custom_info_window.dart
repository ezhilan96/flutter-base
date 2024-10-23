import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../config/color_scheme.dart';

class CustomInfoWindow extends StatelessWidget {
  const CustomInfoWindow(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: CustomColors.black,
        borderRadius: BorderRadius.all(Radius.circular(6)),
      ),
      child: Material(
        borderRadius: const BorderRadius.all(Radius.circular(6)),
        child: InkWell(
          onTap: () => Navigator.pop(context),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SizedBox(
                  width: 100,
                  child: Text(
                    text,
                    maxLines: 1,
                  ),
                ),
                SvgPicture.asset('assets/images/svg/ic_next.svg'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
