import 'package:app/common/bottom_nav_bar.dart';
import 'package:app/features/home/screen/widget/app_logo.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static String home = '/';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  // ignore: must_call_super
  initState() {
   _goto();
  }
  Future<void>_goto()async{
 await Future.delayed(Duration(seconds:2));
 Navigator.pushNamedAndRemoveUntil( context ,BottomNavBar.home,(route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              SizedBox(height: 20),
              AppLogo(),
              SizedBox(height: 30),
              CircularProgressIndicator(),
              SizedBox(height: 10),
              GestureDetector(
                child: Text("go to now"),

                onTap: () {
                  Navigator.pushNamed(context, BottomNavBar.home);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
