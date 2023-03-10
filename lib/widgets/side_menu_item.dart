import 'package:flutter/material.dart';
import 'package:taxi_app_admin_panel/widgets/vertical_menu_item.dart';
import '../helpers/responsiveness.dart';
import 'horizontal_menu_item.dart';

class SideMenuItem extends StatelessWidget {
  final String itemName;
  final Function onTap;

  const SideMenuItem({Key key, this.itemName, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HorizontalMenuItem(
      itemName: itemName,
      onTap: onTap,
    );
  }
}
