import 'package:flutter/material.dart';

class NotificationsPanel extends StatelessWidget {
  static const routeName = '/notifications';
  const NotificationsPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Notifications')),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, i) => ListTile(
          leading: const Icon(Icons.notifications),
          title: Text('Notification ${i + 1}'),
          subtitle: const Text('Some details about the notification'),
        ),
      ),
    );
  }
}
