import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: const BorderSide(width: 1, color: Colors.white))),
      child: Row(children: [
        Text(
          'Monthly',
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(width: 5),
        const Icon(Icons.keyboard_arrow_down_outlined)
      ]),
    );
  }
}
