import 'package:facebook/core/app_colors.dart';
import 'package:flutter/material.dart';

class CreateStory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
      margin: EdgeInsets.only(left: 8, right: 8),
      width: 113,
      height: 158,
      child: Stack(children: [
        Positioned(
          top: 0,
          // الصورة تبدأ من الأعلى
          left: 0,
          right: 0,
          height: 116,
          child: Image.asset(
            'assets/profiles/main_profile.png', // مسار الصورة
            fit: BoxFit.fill, // تجعل الصورة تملأ المساحة بالكامل
          ),
        ),
        Positioned(
          top: 103,
          // الصورة تبدأ من الأعلى
          left: 43.5,
          right: 43.5,
          bottom: 28,
          child: CircleAvatar(
            foregroundColor: Colors.white,
            backgroundColor: AppColors.blue,
            child: Icon(Icons.add, weight: 64),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 132, left: 37),
          child: Text(
            "Create a \n  Story",
            style: TextStyle(
                fontSize: 10, fontWeight: FontWeight.w600, height: 1.0),
          ),
        )
      ]),
    );
  }
}
