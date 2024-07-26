import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopper_app/presentation/widgets/custom_appbar.dart';
import 'package:shopper_app/presentation/widgets/custom_elevated_button.dart';
import 'package:shopper_app/utils/constants/app_assets.dart';
import 'package:shopper_app/utils/constants/app_colors.dart';
import 'package:shopper_app/utils/constants/app_paddings.dart';

import 'widgets/add_new_address_button.dart';
import 'widgets/address_list.dart';

class AddressPage extends StatelessWidget {
  const AddressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(title: 'Address'),
        body: Column(
          children: [
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: AddNewAddressButton(),
                ),
                Expanded(
                  child: SizedBox(
                    height: 200,
                    child: AddressList(),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Padding(
              padding: AppPaddings.h15,
              child: CustomElevatedButton(
                onPressed: () {},
                child: Row(
                  children: [
                    const Text(
                      "Payment",
                      style: TextStyle(color: AppColors.black),
                    ),
                    const Spacer(),
                    SvgPicture.asset(AppAssets.arrowRight)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
