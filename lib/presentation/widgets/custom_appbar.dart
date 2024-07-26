import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rxdart/rxdart.dart';

import '../../utils/constants/app_assets.dart';
import '../../utils/constants/app_colors.dart';
import '../../utils/constants/app_radiuses.dart';
import 'appbar_icon_button.dart';
import 'custom_text_field.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    this.hasTitle = true,
    this.isSearch = false,
    this.noLeading = false,
  });

  const CustomAppBar.noLeading({
    super.key,
    required this.title,
    this.hasTitle = true,
    this.isSearch = false,
  }) : noLeading = true;

  const CustomAppBar.withSearchIcon({
    super.key,
    this.hasTitle = false,
    this.isSearch = true,
    this.noLeading = false,
  }) : title = null;

  const CustomAppBar.withFavoriteIcon({
    super.key,
    this.hasTitle = false,
    this.isSearch = false,
    this.noLeading = false,
  }) : title = null;

  final String? title;
  final bool hasTitle;
  final bool isSearch;
  final bool noLeading;

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

final BehaviorSubject<bool> isSearchOpenController =
    BehaviorSubject<bool>.seeded(false);

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.white,
      scrolledUnderElevation: 0,
      centerTitle: true,
      title: widget.hasTitle
          ? Text(
              widget.title!,
              style: const TextStyle(
                color: AppColors.blackText,
                fontSize: 26,
                fontWeight: FontWeight.w700,
              ),
            )
          : null,
      leading: widget.noLeading
          ? null
          : IconButton(
              icon: SvgPicture.asset(
                widget.hasTitle
                    ? AppAssets.arrowLeft
                    : AppAssets.menuButtonIcon,
                fit: BoxFit.contain,
              ),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
      actions: !widget.hasTitle
          ? [
              widget.isSearch
                  ? StreamBuilder<bool>(
                      stream: isSearchOpenController.stream,
                      initialData: false,
                      builder: (context, snapshot) {
                        final isSearchOpen = snapshot.data ?? false;
                        return AnimatedContainer(
                          duration: const Duration(milliseconds: 800),
                          curve: Curves.easeInOut,
                          child: isSearchOpen
                              ? CustomTextField(
                                  prefixIcon: AppBarIconButton(
                                    onTap: () {
                                      isSearchOpenController.add(false);
                                    },
                                    borderRadius: AppRadiuses.a6,
                                    icon:
                                        SvgPicture.asset(AppAssets.searchIcon),
                                  ),
                                )
                              : AppBarIconButton(
                                  onTap: () {
                                    isSearchOpenController.add(true);
                                  },
                                  backgroundColor: AppColors.primaryColor,
                                  foregroundColor: Colors.white,
                                  borderRadius: AppRadiuses.a6,
                                  icon: SvgPicture.asset(AppAssets.searchIcon),
                                ),
                        );
                      },
                    )
                  : AppBarIconButton(
                      onTap: () {},
                      backgroundColor: AppColors.favoriteIconBackgroundColor,
                      foregroundColor: AppColors.black,
                      borderRadius: AppRadiuses.a20,
                      icon: SvgPicture.asset(
                        AppAssets.favoriteIcon,
                      )),
            ]
          : null,
    );
  }
}
