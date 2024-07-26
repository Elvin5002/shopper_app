import 'package:flutter/material.dart';
import 'package:shopper_app/presentation/screens/notification/widget/notification_list_item.dart';
import 'package:shopper_app/presentation/widgets/custom_appbar.dart';
import 'package:shopper_app/utils/constants/app_strings.dart';

import 'model/notification_model.dart';

class NotificationListPageView extends StatelessWidget {
  const NotificationListPageView({super.key});

  @override
  Widget build(BuildContext context) {
    final notifications = NotificationModel.notificationModel;
    return Scaffold(
      appBar: const CustomAppBar(
        title: AppStrings.notificationPageTitle,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
        ]),
      ),
    );
  }
}
