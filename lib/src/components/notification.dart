import 'package:flutter/material.dart';

class DashboardNotification extends StatefulWidget {
  const DashboardNotification({super.key});

  @override
  State<DashboardNotification> createState() => _DashboardNotificationState();
}

class _DashboardNotificationState extends State<DashboardNotification> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'One',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w900,
                  color: Colors.red[600]),
            ),
            Text(
              'Bank',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey[700]),
            ),
          ],
        ),
        const Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0),
              child: Icon(Icons.search_rounded),
            ),
            Icon(Icons.notifications)
          ],
        )
      ],
    );
  }
}
