import 'package:flutter/material.dart';
import 'package:shopper_app/presentation/widgets/custom_appbar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar.withSearchIcon(),
      body: Container(),
    );
  }
}
