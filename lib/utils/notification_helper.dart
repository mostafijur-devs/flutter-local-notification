import 'dart:io';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationHelper {
  static FlutterLocalNotificationsPlugin notification =
      FlutterLocalNotificationsPlugin();

  static initialize() async {
    AndroidInitializationSettings android = AndroidInitializationSettings(
      '@mipmap/ic_launcher',
    );
    DarwinInitializationSettings iOS = DarwinInitializationSettings();

    InitializationSettings initializationSettings = InitializationSettings(
      android: android,
      iOS: iOS,
    );
    await notification.initialize(initializationSettings);

    if(Platform.isAndroid){
      await notification.resolvePlatformSpecificImplementation <AndroidFlutterLocalNotificationsPlugin>()
          ?.requestNotificationsPermission();
    }else{
      await notification.resolvePlatformSpecificImplementation<IOSFlutterLocalNotificationsPlugin>()?.requestPermissions();
    }

  }

  // static show() async {
  //   AndroidNotificationDetails androidNotificationDetails =
  //       AndroidNotificationDetails('channel_id', 'Important Channel');
  //   DarwinNotificationDetails darwinNotificationDetails =
  //       DarwinNotificationDetails();
  //   NotificationDetails notificationDetails = NotificationDetails(
  //     android: androidNotificationDetails,
  //     iOS: darwinNotificationDetails,
  //   );
  //   await notification.show(
  //     100,
  //     'Sample tittle',
  //     'This is notification body',
  //     notificationDetails,
  //   );
  // }

  static showNotification() async {
    AndroidNotificationDetails androidNotificationDetails =
        AndroidNotificationDetails('channel_id', 'Important Channel');

    DarwinNotificationDetails darwinNotificationDetails =
        DarwinNotificationDetails();

    NotificationDetails notificationDetails = NotificationDetails(
      android: androidNotificationDetails,
      iOS: darwinNotificationDetails,
    );

    await notification.show(
      100,
      'Sample title',
      'This is notification body',
      notificationDetails,
    );
  }
}
