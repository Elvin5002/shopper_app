import '../../../utils/constants/app_assets.dart';

class BottomNavBarItems {
  const BottomNavBarItems({
    required this.icon,
    required this.activeIcon,
  });

  final String icon;
  final String activeIcon;

  static const bottomNavBarItems = [
    BottomNavBarItems(
      icon: AppAssets.homeIcon,
      activeIcon: AppAssets.homeActiveIcon,
    ),
    BottomNavBarItems(
      icon: AppAssets.lockIcon,
      activeIcon: AppAssets.lockActiveIcon,
    ),
    BottomNavBarItems(
      icon: AppAssets.notificationIcon,
      activeIcon: AppAssets.notificationActiveIcon,
    ),
    BottomNavBarItems(
      icon: AppAssets.favoriteIcon,
      activeIcon: AppAssets.favoriteActiveIcon,
    ),
  ];
}
