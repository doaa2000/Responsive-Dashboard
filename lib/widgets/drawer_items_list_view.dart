import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/drawer_item.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({
    super.key,
  });

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  int activeIndex = 0;
  final List<DrawerItemModel> items = [
    DrawerItemModel(title: 'Dashboard', image: Assets.imagesDashboard),
    DrawerItemModel(title: 'My Transaction', image: Assets.imagesTrnsactions),
    DrawerItemModel(title: 'Statistics', image: Assets.imagesStatics),
    DrawerItemModel(title: 'Wallet Account', image: Assets.imagesWallet2),
    DrawerItemModel(title: 'My Investments', image: Assets.imagesChart2),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: items.length,
        itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                if (activeIndex != index) {
                  setState(() {
                    activeIndex = index;
                  });
                }
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: DrawerItem(
                    drawerItemModel: items[index],
                    isActive: activeIndex == index),
              ),
            ));
  }
}
