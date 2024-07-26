import '../utils/di/locator.dart';
import '../utils/helpers/pager.dart';
import 'package:flutter/material.dart';
import '../data/services/local/login_local_service.dart';

final navKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final loginLocalService = locator<LoginLocalService>();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: loginLocalService.loginResponse == null
          ? Pager.introduction
          : Pager.home,
      navigatorKey: navKey,
    );
  }
}
