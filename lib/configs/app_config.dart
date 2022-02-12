

import 'package:flutter_demo/configs/flavor.dart';

class AppConfigs {
  AppConfigs();
  static get authority => FlavorConfig.instance!.values.authority;
  static get domainApp => FlavorConfig.instance!.values.domainApp;
}
