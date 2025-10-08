import 'package:flutter/material.dart';
import 'package:local_notification/utils/notification_helper.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {
              NotificationHelper.show();

            }, child: Text('Show Notification')),
            ElevatedButton(onPressed: () {
              NotificationHelper.scheduled();
            }, child: Text('Show scheduled Notification')),
            ElevatedButton(onPressed: () {
              NotificationHelper.periodically();
            }, child: Text('Show scheduled Notification')),
          ],
        ),
      ),
    );
  }
}
