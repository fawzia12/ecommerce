import 'package:app/app/app_image_path.dart';
import 'package:app/features/home/screen/widget/custom_avater.dart';
import 'package:app/features/home/screen/widget/customtextfiled.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static String home = '/home_screen';
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(AppImagePath.logo, height: 859,),
        actions: [
         CustomAvater(icons: Icons.person, ontap: (){}),
         SizedBox(width: 10,),
          CustomAvater(icons: Icons.call, ontap: (){}),
          SizedBox(width: 10,),
           CustomAvater(icons: Icons.notification_add, ontap: (){}),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 28,),
          Customtextfiled(text: "search",
          icons: Icons.search,
          )
        ],
      ),
    );
  }
}
