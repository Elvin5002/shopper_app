import 'package:flutter/material.dart';
import 'widgets/inputs_view.dart';
import 'widgets/profile_image_view.dart';
import '../../widgets/custom_appbar.dart';
import '../../../utils/constants/app_paddings.dart';
import '../../../utils/extensions/sizedbox_extension.dart';

class AccountEditScreen extends StatelessWidget {
const AccountEditScreen({super.key });

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: const CustomAppBar(title: 'Edit Account',),
      body: Padding(
        padding: AppPaddings.h30,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const ProfileImageView(),
              10.h,
              const InputsView()
            ],
          ),
        ),
      )
    );
  }
}