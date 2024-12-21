import 'package:flutter/material.dart';
import 'package:facebook/core/app_colors.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        "facebook",
        style: TextStyle(
            color: AppColors.blue, fontSize: 30, fontWeight: FontWeight.bold),
      ),
      actions: [
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/images/Plus.png', // مسار الأيقونة
              height: 26, // تعديل الحجم
              width: 26,
            )),
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/images/Search.png', // مسار الأيقونة
              height: 24, // تعديل الحجم
              width: 24,
            )),
        Padding(
            padding: const EdgeInsets.only(left: 8, right: 16),
            child: Image.asset(
              'assets/images/Messenger.png', // مسار الأيقونة
              height: 24, // تعديل الحجم
              width: 24,
            )),
      ],
      bottom: TabBar(indicatorColor: AppColors.blue, tabs: [
        Container(
          padding: EdgeInsets.only(bottom: 8),
          alignment: Alignment.center,
          child: Image.asset(
            'assets/images/home.png', // مسار الأيقونة
          ),
        ),
        Container(
            padding: EdgeInsets.only(bottom: 8),
            alignment: Alignment.center,
            child: Image.asset(
              'assets/images/video.png', // مسار الأيقونة
            )),
        Container(
            padding: EdgeInsets.only(bottom: 8),
            alignment: Alignment.center,
            child: Image.asset(
              'assets/images/Store.png', // مسار الأيقونة
            )),
        Container(
            padding: EdgeInsets.only(bottom: 8),
            alignment: Alignment.center,
            child: Image.asset(
              'assets/images/Profile.png', // مسار الأيقونة
            )),
        Container(
            padding: EdgeInsets.only(bottom: 8),
            alignment: Alignment.center,
            child: Image.asset(
              'assets/images/bill.png', // مسار الأيقونة
            )),
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: CircleAvatar(
            radius: 16,
            backgroundImage: AssetImage('assets/profiles/main_profile.png'),
          ),
        )
      ]),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight + 48);
}
