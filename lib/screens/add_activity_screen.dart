import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

// Utils
import 'package:activity_tracker_app/utils/app_styles.dart';

class AddActivityScreen extends StatelessWidget {
  const AddActivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          const Gap(50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                " Add Activity",
                style: Styles.headingLineStyle1,
              ),
              const Icon(Icons.more_horiz)
            ],
          )
        ],
      ),
    ));
  }
}
