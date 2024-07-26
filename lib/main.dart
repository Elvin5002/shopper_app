import 'package:flutter/material.dart';

import 'presentation/app.dart';
import 'utils/di/locator.dart';

void main() async {
  await init();
  await setupLocator();
  runApp(const MyApp());
}
