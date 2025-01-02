import 'package:facebook/core/app_colors.dart';
import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  final String accountImage;
  final String accountName;
  final String postTime;
  final String postImage;

  Post({
    required this.accountImage,
    required this.accountName,
    required this.postImage,
    required this.postTime,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // AppBar الخاص بالبوست
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(accountImage),
                radius: 24,
              ),
              SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      accountName,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          '$postTime • ',
                          style: TextStyle(
                            color: Color(0xFF898F9C),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Icon(
                          Icons.public,
                          color: AppColors.gray,
                          size: 14,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Icon(Icons.more_horiz, size: 24),
            ],
          ),
        ),
        // صورة البوست
        Container(
          height: 180,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(postImage), fit: BoxFit.fill)),
        ),
        // خيارات التفاعل
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset('assets/posts/icon.png'),
                  SizedBox(width: 8),
                  Image.asset('assets/posts/Vector2.png'),
                  SizedBox(width: 8),
                  Image.asset('assets/posts/Vector3.png'),
                ],
              ),
              Image.asset('assets/posts/Vector.png'),
            ],
          ),
        ),
        Divider(
          color: AppColors.gray,
          thickness: 1,
        ),
      ],
    );
  }
}
