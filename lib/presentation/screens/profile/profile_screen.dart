import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'widgets/mid_view.dart';
import 'widgets/top_view.dart';
import '../../../utils/constants/app_assets.dart';
import '../../../utils/constants/app_paddings.dart';
import '../../../utils/extensions/navigation_extension.dart';
import '../../../utils/extensions/sizedbox_extension.dart';
import '../../../utils/helpers/pager.dart';

class ProfileScreen extends StatelessWidget {
const ProfileScreen({ super.key });

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: SvgPicture.asset(AppAssets.setting),
            onPressed: () {
              context.to(Pager.settings);
            },
          )
        ],
      ),
      body: Padding(
        padding: AppPaddings.h30v10,
        child: Column(
          children: [
            const TopView(),
            30.h,
            const MidView()
          ],
        ),
      ),
    );
  }
}