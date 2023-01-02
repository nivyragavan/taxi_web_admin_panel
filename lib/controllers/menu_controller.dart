import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/style.dart';
import '../routing/routes.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();
  var activeItem = OverviewPageRoute.obs;

  var hoverItem = "".obs;

  changeActiveItemTo(String itemName) {
    activeItem.value = itemName;
  }

  onHover(String itemName) {
    if (!isActive(itemName)) hoverItem.value = itemName;
  }

  isHovering(String itemName) => hoverItem.value == itemName;

  isActive(String itemName) => activeItem.value == itemName;

  Widget returnIconFor(String itemName) {
    switch (itemName) {
      case OverviewPageRoute:
        return _customIcon(Icons.trending_up, itemName);
      case ProfilePageRoute:
        return _customIcon(Icons.account_circle_outlined, itemName);
      case SubAdminPageRoute:
        return _customIcon(Icons.group_add_outlined, itemName);
      case PackageAndCabRoute:
        return _customIcon(Icons.add, itemName);
      case AddVendorPageRoute:
        return _customIcon(Icons.person_add_alt, itemName);
      case VendorPageRoute:
        return _customIcon(Icons.person_outline, itemName);
      case DriverPageRoute:
        return _customIcon(Icons.person_outline, itemName);
      case CarPageRoute:
        return _customIcon(Icons.drive_eta_outlined, itemName);
      case VendorWalletTransactionRoute:
        return _customIcon(Icons.account_balance_wallet_outlined, itemName);
      case UsersPageRoute:
        return _customIcon(Icons.people_alt_outlined, itemName);
      case ProgressRidePageRoute:
        return _customIcon(Icons.loop_rounded, itemName);
      case CompletedRidePageRoute:
        return _customIcon(Icons.check_circle_outlined, itemName);
      case ScheduledRidePageRoute:
        return _customIcon(Icons.schedule_rounded, itemName);
      case CancelledRidePageRoute:
        return _customIcon(Icons.cancel_outlined, itemName);
      case RideHistoryPageRoute:
        return _customIcon(Icons.history_toggle_off, itemName);
      case ManualBookingHistoryRoute:
        return _customIcon(Icons.history, itemName);
      case LocationPageRoute:
        return _customIcon(Icons.location_on_outlined, itemName);
      case AuthenticationPageRoute:
        return _customIcon(Icons.exit_to_app, itemName);
      default:
        return _customIcon(Icons.exit_to_app, itemName);
    }
  }

  Widget _customIcon(IconData icon, String itemName) {
    if (isActive(itemName)) return Icon(icon, size: 17, color: green);

    return Icon(
      icon,
      color: isHovering(itemName) ? black : dark.withOpacity(0.8),
    );
  }
}
