import 'package:facebook/core/app_colors.dart';
import 'package:facebook/core/app_images.dart';
import 'package:facebook/home_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formField = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  bool passToggle = true;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 48),
          child: Column(
            children: [
              Form(
                key: _formField,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          AppImages.facebookLogo,
                          height: 98,
                          width: 100,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 38,
                    ),
                    SizedBox(
                      width: screenWidth * .9,
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        controller: emailController,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 8, left: 16),
                          // Center it vertically
                          hintText: "Mobile Number or Email Address",
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(
                              color: AppColors.gray,
                            ),
                          ),
                          // Border when focused
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(
                              color: AppColors.blue,
                            ),
                          ),
                          // Error border
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(
                              color: Colors.red,
                            ),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(
                              color: AppColors.blue,
                            ),
                          ),
                        ),
                        validator: (value) {
                          bool emailValid = RegExp(
                                  r"^(?=[a-zA-Z0-9._%+-]{1,64}@)[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$")
                              .hasMatch(value!);
                          if (value.isEmpty) {
                            return "Enter email ";
                          } else if (!emailValid) {
                            return "Enter a valid email";
                          }
                        },
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    SizedBox(
                      width: screenWidth * .9,
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        controller: passController,
                        obscureText: passToggle,
                        decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.only(left: 16, right: 16),
                            // Center it vertically
                            hintText: "Password",
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide: BorderSide(
                                color: AppColors.gray,
                              ),
                            ),
                            // Border when focused
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide: BorderSide(
                                color: AppColors.blue,
                              ),
                            ),
                            // Error border
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide: BorderSide(
                                color: Colors.red,
                              ),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide: BorderSide(
                                color: AppColors.blue,
                              ),
                            ),
                            suffix: Padding(
                              padding: const EdgeInsets.only(
                                right: 8.0,
                              ),
                              child: InkWell(
                                highlightColor: AppColors.gray,
                                onTap: () {
                                  setState(() {
                                    passToggle = !passToggle;
                                  });
                                },
                                child: Icon(
                                  passToggle
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: AppColors.gray,
                                ),
                              ),
                            )),
                        validator: (value) {
                          final passwordRegExp = RegExp(
                            r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$",
                          ).hasMatch(value!);
                          if (value.isEmpty) {
                            return 'Password is required';
                          }
                          if (value.length < 6) {
                            return 'Password must be at least 6 characters long';
                          }
                          if (!value.contains(RegExp(r'[A-Z]'))) {
                            return 'Enter uppercase letter';
                          }
                          if (!value.contains(RegExp(r'[a-z]'))) {
                            return 'Enter lowercase letter';
                          }
                          if (!value.contains(RegExp(r'[0-9]'))) {
                            return 'Enter number';
                          }
                          if (!value.contains(RegExp(r"[@$!%*?&#/^]"))) {
                            return 'Enter special character';
                          }
                        },
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      width: screenWidth * .9,
                      height: 50,
                      child: ElevatedButton(
                          onPressed: () {
                            if (_formField.currentState!.validate()) {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomeScreen()));
                              emailController.clear();
                              passController.clear();
                            }
                          },
                          child: Text("Login "),
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              side: BorderSide(
                                color: AppColors.blue,
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16)),
                              foregroundColor: AppColors.white,
                              backgroundColor: AppColors.blue)),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forgotten Password ?",
                          style: TextStyle(color: AppColors.blue),
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 240,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: screenWidth * .9,
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Create Account "),
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            side: BorderSide(
                              color: AppColors.blue,
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16)),
                            foregroundColor: AppColors.blue)),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Image.asset(
                    AppImages.metaLogo,
                    width: 98,
                    height: 40,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
