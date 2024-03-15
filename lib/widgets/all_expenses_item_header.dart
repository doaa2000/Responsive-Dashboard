import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key,
      required this.image,
      this.imageColor,
      this.imageBackground,
      this.iconImage});
  final String image;
  final Color? imageColor, imageBackground, iconImage;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: ShapeDecoration(
              color: imageBackground ?? Colors.white,
              shape: const OvalBorder()),
          child: SvgPicture.asset(image,
              colorFilter: ColorFilter.mode(
                  imageColor ?? const Color(0xFF4EB7F2), BlendMode.srcIn)),
        ),
        const Spacer(),
        Icon(
          Icons.arrow_forward_ios_outlined,
          color: iconImage ?? const Color(0xFF064061),
        )
      ],
    );
  }
}
