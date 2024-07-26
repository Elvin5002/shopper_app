import 'package:shopper_app/utils/constants/app_assets.dart';
import 'package:shopper_app/utils/constants/app_strings.dart';

class NotificationModel {
  final String message;
  final String time;
  final String img;
  final bool? read;

  NotificationModel(
      {required this.message,
      required this.time,
      required this.img,
       this.read});

  static List<NotificationModel> notificationModel = [
    NotificationModel(
      message: AppStrings.notificationMessage1,
      time: AppStrings.notificationSendTime1,
      img: AppAssets.notificationAvatar,
      read: true,
    ),
    NotificationModel(
      message: AppStrings.notificationMessage2,
      time: AppStrings.notificationSendTime2,
      img: AppAssets.notificationAvatar,
      read: true,
    ),
    NotificationModel(
      message: AppStrings.notificationMessage3,
      time: AppStrings.notificationSendTime3,
      img: AppAssets.couponIcon,
      read: false,
    ),
    NotificationModel(
      message: AppStrings.notificationMessage4,
      time: AppStrings.notificationSendTime3,
      img: AppAssets.payIcon,
      read: false,
    ),
  ];
}
