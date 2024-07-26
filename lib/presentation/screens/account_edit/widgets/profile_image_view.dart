import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shopper_app/utils/constants/app_assets.dart';

class ProfileImageView extends StatelessWidget {
const ProfileImageView({ super.key });

  @override
  Widget build(BuildContext context){
    return Center(
      child: Container(
        width: 128,
        height: 128,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage(AppAssets.user),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}