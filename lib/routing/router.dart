import 'package:flutter/material.dart';
import 'package:taxi_app_admin_panel/routing/routes.dart';
import '../view/add_vendor_page.dart';
import '../view/cancelled_rides_page.dart';
import '../view/car_page.dart';
import '../view/completed_rides_page.dart';
import '../view/driver_page.dart';
import '../view/location_page.dart';
import '../view/manual_booking_history_page.dart';
import '../view/overview.dart';
import '../view/package_and_cab_page.dart';
import '../view/profile.dart';
import '../view/ride_history_page.dart';
import '../view/rides_in_progress_page.dart';
import '../view/scheduled_rides_page.dart';
import '../view/subadmin.dart';
import '../view/users_page.dart';
import '../view/vendor_page.dart';
import '../view/vendor_wallet_transaction_page.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case OverviewPageRoute:
      return _getPageRoute(OverviewPage());
    case ProfilePageRoute:
      return _getPageRoute(const ProfilePage());
    case SubAdminPageRoute:
      return _getPageRoute(SubAdminPage());
    case PackageAndCabRoute:
      return _getPageRoute(PackageAndCabPage());
    case AddVendorPageRoute:
      return _getPageRoute(const AddVendorPage());
    case VendorPageRoute:
      return _getPageRoute(const VendorPage());
    case DriverPageRoute:
      return _getPageRoute(DriverPage());
    case CarPageRoute:
      return _getPageRoute(CarPage());
    case VendorWalletTransactionRoute:
      return _getPageRoute(VendorWalletTransactionPage());
    case UsersPageRoute:
      return _getPageRoute(UsersPage());
    case ProgressRidePageRoute:
      return _getPageRoute(RidesInProgress());
    case CompletedRidePageRoute:
      return _getPageRoute(CompletedRides());
    case CancelledRidePageRoute:
      return _getPageRoute(CancelledRides());
    case RideHistoryPageRoute:
      return _getPageRoute(RideHistory());
    case ScheduledRidePageRoute:
      return _getPageRoute(ScheduledRides());
    case ManualBookingHistoryRoute:
      return _getPageRoute(ManualBookingHistoryPage());
    case LocationPageRoute:
      return _getPageRoute(const LocationPage());
    default:
      return _getPageRoute(OverviewPage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
