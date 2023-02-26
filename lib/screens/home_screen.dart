import 'package:activity_tracker_app/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      appBar: AppBar(
        title: Text(
          "Activities",
          style: Styles.headingLineStyle2,
        ),
        backgroundColor: Styles.orangeColor,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 15),
          children: [
            ListTile(
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
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: const Icon(Icons.sports_golf),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Golf",
                    style:
                        Styles.headingLineStyle3.copyWith(color: Colors.black),
                  ),
                  const Gap(5),
                  Text(
                    "Connect with business people",
                    style:
                        Styles.textStyle.copyWith(color: Colors.grey.shade500),
                  ),
                ],
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: const Icon(Icons.directions_run),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Run",
                    style:
                        Styles.headingLineStyle3.copyWith(color: Colors.black),
                  ),
                  const Gap(5),
                  Text(
                    "In-door running",
                    style:
                        Styles.textStyle.copyWith(color: Colors.grey.shade500),
                  ),
                ],
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
            )
          ],
        ),
      ),
    );
  }
}
