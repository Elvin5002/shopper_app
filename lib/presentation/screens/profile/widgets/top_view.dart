import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopper_app/utils/constants/app_assets.dart';
import 'package:shopper_app/utils/controllers/user_controller.dart';
import 'package:shopper_app/utils/extensions/navigation_extension.dart';
import 'package:shopper_app/utils/extensions/sizedbox_extension.dart';
import 'package:shopper_app/utils/helpers/pager.dart';

class TopView extends StatelessWidget {
const TopView({super.key});

  @override
  Widget build(BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(AppAssets.user),
              fit: BoxFit.cover,
            ),
          ),
        ),
        10.w,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              UserController.email
            ),
            10.h,
            const Text(
              'User user',
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
            )
          ],
        ),
        10.w,
        IconButton(
          icon: SvgPicture.asset(AppAssets.edit),
          onPressed: (){
            context.to(Pager.accountEdit);
          },
        )
      ],
    );
  }
}