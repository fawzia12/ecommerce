import 'package:app/app/app_routes.dart';
import 'package:flutter/material.dart';

class Coderx extends StatelessWidget {
  const Coderx({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}
