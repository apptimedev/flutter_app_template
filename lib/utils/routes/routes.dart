import 'package:flutter/material.dart';
import 'package:flutter_example/services/settings/settings_controller.dart';

import '../../pages/sample_item/sample_item_details_page.dart';
import '../../pages/index_page.dart';
import '../../pages/settings/settings_page.dart';

class AppRoutes {
  static Route<void> routes(
      RouteSettings routeSettings, SettingsController settingsController) {
    return MaterialPageRoute<void>(
      settings: routeSettings,
      builder: (BuildContext context) {
        switch (routeSettings.name) {
          case SettingsPage.routeName:
            return SettingsPage(controller: settingsController);
          case SampleItemDetailsPage.routeName:
            return const SampleItemDetailsPage();
          case IndexPage.routeName:
          default:
            return const IndexPage();
        }
      },
    );
  }
}
