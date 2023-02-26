import 'package:flutter/material.dart';
import 'package:activity_tracker_app/utils/app_styles.dart';

class ActivityScreen extends StatelessWidget {
  final dynamic activityId;
  const ActivityScreen({super.key, required this.activityId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      appBar: AppBar(
        title: Text(
          'Activity',
          style: Styles.headingLineStyle2.copyWith(color: Colors.white70),
        ),
        backgroundColor: Styles.orangeColor,
      ),
    );
  }
}
