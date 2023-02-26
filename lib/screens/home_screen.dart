import 'package:activity_tracker_app/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      appBar: AppBar(
        title: Text(
          "Activities",
          style: Styles.headingLineStyle2.copyWith(color: Colors.white70),
        ),
        backgroundColor: Styles.orangeColor,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 15),
          children: [
            ListTile(
                onTap: () => context.go('/activity/123'),
              leading: const Icon(Icons.car_rental),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Walk",
                    style:
                        Styles.headingLineStyle3.copyWith(color: Colors.black),
                  ),
                  const Gap(5),
                  Text(
                    "Casual walk down the road",
                    style:
                        Styles.textStyle.copyWith(color: Colors.grey.shade500),
                  ),
                ],
              ),
              trailing: const Icon(Icons.more_vert),
            ),
            ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.go('/add-activity'),
        tooltip: 'Increment',
        backgroundColor: Styles.orangeColor,
        child: const Icon(Icons.add),
      ), 
    );
  }
}
