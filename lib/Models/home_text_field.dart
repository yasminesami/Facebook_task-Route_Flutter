import 'package:facebook/core/app_colors.dart';
import 'package:flutter/material.dart';

class HomeTextField extends StatelessWidget {
  const HomeTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          hintStyle: TextStyle(
            color: AppColors.gray,
          ),
          contentPadding: EdgeInsets.all(16),
          hintText: "What’s in Your Mind?",
          prefixIcon: Padding(
            padding: const EdgeInsets.all(8.0), // Adjust spacing
            child: CircleAvatar(
              radius: 20, // Adjust the size
              backgroundImage: AssetImage('assets/profiles/main_profile.png'),
            ),
          ),
          suffixIcon: Image.asset('assets/images/gallery.png')),
    );
  }
}
