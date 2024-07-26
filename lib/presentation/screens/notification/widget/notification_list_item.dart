import 'package:flutter/material.dart';
import 'package:shopper_app/utils/constants/app_colors.dart';

class NotificationListItem extends StatelessWidget {
  const NotificationListItem({
    super.key,
    required this.img,
    required this.message,
    required this.time,
    this.read,
  });

  final String img;
  final String message;
  final String time;
  final bool? read;

  @override
  Widget build(BuildContext context) {
    bool isRead = read ?? false;
    return ListTile(
      leading: CircleAvatar(
        child: Image.asset(
          img,
        ),
      ),
      title: SizedBox(
        child: Text(
          message,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          style: const TextStyle(color: AppColors.darkGray),
        ),
      ),
      subtitle: Text(
        time,
      ),
      trailing: isRead 
          ? Container(
              width: 10.0,
              height: 10.0,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.buttonColorLightGreen),
            )
          : const SizedBox(),
    );
  }
}
