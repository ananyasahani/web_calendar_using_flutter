import 'package:flutter/material.dart';

class PublicCalendarView extends StatelessWidget {
  static const routeName = '/public';
  const PublicCalendarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Public Calendar')),
      body: Center(
        child: Card(
          margin: const EdgeInsets.all(24),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('Public Calendar View', style: TextStyle(fontSize: 20)),
                SizedBox(height: 12),
                Text('A read-only view of the calendar for public sharing.'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
