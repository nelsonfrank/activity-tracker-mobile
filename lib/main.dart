// Dependencies
import 'package:activity_tracker_app/screens/add_activity_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// Screens
import 'package:activity_tracker_app/screens/activity_screen.dart';
import 'package:activity_tracker_app/screens/home_screen.dart';


void main() {
  runApp(const MyApp());
}


final _router = GoRouter(
  routes: [
    GoRoute(
        name: "home",
        path: '/',
        builder: (context, state) => const HomeScreen(),
        routes: [
          GoRoute(
            name: "activity",
            path: 'activity/:id',
            builder: (context, state) =>
                ActivityScreen(activityId: state.params['id']),
          ),
          GoRoute(
              name: "add-activity",
              path: 'add-activity',
              builder: (context, state) => const AddActivityScreen()),
        ]
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
