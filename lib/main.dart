import 'package:activity_tracker_app/screens/home_screen.dart';
import 'package:activity_tracker_app/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


void main() {
  runApp(const MyApp());
}


final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
  ],
);


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      debugShowCheckedModeBanner: false,

    );
  }
}
