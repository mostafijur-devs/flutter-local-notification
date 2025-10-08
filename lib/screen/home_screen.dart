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
        child: ElevatedButton(onPressed: () {
          NotificationHelper.showNotification();

        }, child: Text('Show Notification')),
      ),
    );
  }
}
