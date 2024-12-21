import 'package:facebook/core/app_images.dart';
import 'package:facebook/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  initState() {
    Future.delayed(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LoginScreen(),
          )),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 3,
              child: Center(
                child: Image.asset(
                  AppImages.facebookLogo,
                  height: 100,
                  width: 100,
                ),
              )),
          Expanded(
              flex: 1,
              child: Container(
                  padding: EdgeInsets.only(bottom: 16),
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Meta",
                            style: TextStyle(color: Color(0xFF898F9C)),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            AppImages.metaLogo,
                            width: 98,
                            height: 40,
                          )
                        ],
                      )
                    ],
                  )))
        ],
      ),
    );
  }
}
