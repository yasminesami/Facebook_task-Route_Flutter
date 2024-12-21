import 'package:facebook/core/app_colors.dart';
import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  final String profileImage;
  final String storyImage;

  Stories({required this.profileImage, required this.storyImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      margin: EdgeInsets.only(left: 8),
      width: 99,
      height: 158,
      child: Stack(children: [
        Image.asset(this.storyImage),
        Container(
          margin: EdgeInsets.all(2),
          width: 35,
          // عرض الـ CircleAvatar
          height: 35,
          // ارتفاع الـ CircleAvatar
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: AppColors.blue, // لون الحدود
              width: 3, // عرض الحدود
            ),
          ),
          child: CircleAvatar(
            backgroundImage: AssetImage(this.profileImage),
          ),
        ),
      ]),
    );
  }
}
