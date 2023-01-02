import 'package:flutter/material.dart';
import 'package:taxi_app_admin_panel/widgets/side_menu.dart';

import '../helpers/local_navigator.dart';

class CustomScreen extends StatelessWidget {
  const CustomScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Expanded(child: SideMenu()),
        Expanded(
          flex: 5,
          child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: localNavigator()),
        )
      ],
    );
  }
}
