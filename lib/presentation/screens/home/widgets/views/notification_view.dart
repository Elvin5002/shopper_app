import 'package:flutter/material.dart';

import '../../../../../utils/constants/app_strings.dart';
import '../../../../widgets/custom_appbar.dart';
import '../../../notification/model/notification_model.dart';
import '../../../notification/widget/notification_list_item.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    final notifications = NotificationModel.notificationModel;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar.noLeading(title: AppStrings.notificationPageTitle),
          const Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Text(
              AppStrings.notificationTime1,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: notifications.length,
              itemBuilder: (context, index) {
                final notification = notifications[index];
                return NotificationListItem(
                  message: notification.message,
                  time: notification.time,
                  img: notification.img,
                  read: true,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
