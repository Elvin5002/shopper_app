import 'package:flutter/material.dart';
import 'mid_element.dart';
import '../../../../utils/constants/app_assets.dart';
import '../../../../utils/constants/app_strings.dart';
import '../../../../utils/controllers/user_controller.dart';

class MidView extends StatelessWidget {
const MidView({ super.key });

  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        MidElement(
          img: AppAssets.address, 
          title: AppStrings.addressTxt, 
          onPressed:() {
            //context.to(Pager.settings);
          },
        ),
        MidElement(
          img: AppAssets.wallet, 
          title: AppStrings.paymentTxt,
          onPressed:() {
            //context.to(Pager.wallet);
          },
        ),
        MidElement(
          img: AppAssets.password, 
          title: AppStrings.password,
          onPressed:() {
            //context.to(Pager.settings);
          },
        ),
        MidElement(
          img: AppAssets.order, 
          title: AppStrings.orderTxt,
          onPressed:() {
            //context.to(Pager.order);
          },
        ),
        MidElement(
          img: AppAssets.invite, 
          title: AppStrings.inviteTxt,
          onPressed:() {
            //context.to(Pager.invite);
          },
        ),
        MidElement(
          img: AppAssets.logOut, 
          title: AppStrings.logOutTxt,
          onPressed:() {
            UserController.logout();
          },
        ),
      ],
    );
  }
}