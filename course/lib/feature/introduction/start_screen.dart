import 'package:course/feature/login/login_screen.dart';
import 'package:course/feature/login/register.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 50.h,),
            Text(
              "Welcome to ToDo app",
              style: TextStyle(fontSize: 32.sp),
            ),
            SizedBox(height: 30.h,),
            Text(
              "Please login into your account or create",
              style: TextStyle(fontSize: 16.sp),
            ),
            Text(
              "new account to continue",
              style: TextStyle(fontSize: 16.sp ),
            ),
            Spacer(),
            GestureDetector(
              onTap: () => {
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (_) => const LoginScreen()),
                  (route) => false,
                ),
              },
              child: Container(
                margin: EdgeInsets.all(16),
                padding: EdgeInsets.all(12),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xff8857FF),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Center(
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 14.sp),
                  ),
                ),
              ),
            ),
             GestureDetector(
              onTap: () => {
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (_) => const Register()),
                  (route) => false,
                ),
              },
              child: Container(
                margin: EdgeInsets.all(16.r),
                padding: EdgeInsets.all(12.r),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xff8857FF),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Center(
                  child: Text(
                    "Create Account",
                    style: TextStyle(fontSize: 14.sp.r),
                  ),
                ),
              ),
            ),

            SizedBox(height: 50.h,),

          ],
        ),
      ),
    );
  }
}