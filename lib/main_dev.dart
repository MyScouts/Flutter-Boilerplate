import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter_demo/configs/flavor.dart';
import 'package:flutter_demo/ui/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setFlavorDevelopment();
  await GetStorage.init();

  runApp(const App());
}
