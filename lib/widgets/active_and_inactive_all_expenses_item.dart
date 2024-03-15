import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item_header.dart';

class InactiveAllExpensesItem extends StatelessWidget {
  const InactiveAllExpensesItem({super.key, required this.itemModel});
  final AllExpensesItemModel itemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: Colors.grey.withOpacity(0.2)),
              borderRadius: BorderRadius.circular(12))),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        AllExpensesItemHeader(image: itemModel.image),
        const SizedBox(height: 34),
        Text(
          itemModel.title,
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          itemModel.date,
          style: AppStyles.styleRegular14(context),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          itemModel.price,
          style: AppStyles.styleSemiBold24(context),
        )
      ]),
    );
  }
}

class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({super.key, required this.itemModel});
  final AllExpensesItemModel itemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
          color: const Color(0xFF4EB7F2),
          shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: Colors.grey.withOpacity(0.2)),
              borderRadius: BorderRadius.circular(12))),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        AllExpensesItemHeader(
            iconImage: Colors.white,
            imageColor: Colors.white,
            imageBackground: const Color(0xFF60BEF3),
            image: itemModel.image),
        const SizedBox(height: 34),
        Text(
          itemModel.title,
          style: AppStyles.styleMedium16(context).copyWith(color: Colors.white),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          itemModel.date,
          style:
              AppStyles.styleRegular14(context).copyWith(color: Colors.white),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          itemModel.price,
          style:
              AppStyles.styleSemiBold24(context).copyWith(color: Colors.white),
        )
      ]),
    );
  }
}
