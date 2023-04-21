import 'package:flutter/material.dart';
import '../configs/routes.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Simple Qur\'an',
      routeInformationParser: AppRoutes.goRouter.routeInformationParser,
      routerDelegate: AppRoutes.goRouter.routerDelegate,
      routeInformationProvider: AppRoutes.goRouter.routeInformationProvider,
    );
  }
}
