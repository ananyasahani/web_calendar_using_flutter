import 'package:flutter/material.dart';

class EventDetail extends StatelessWidget {
  static const routeName = '/event_detail';
  const EventDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Event Detail')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Event Title', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            const Text('Time • Location'),
            const SizedBox(height: 16),
            const Text('Description goes here.'),
            const Spacer(),
            Row(
              children: [
                ElevatedButton(onPressed: () => Navigator.pushNamed(context, '/event_editor'), child: const Text('Edit')),
                const SizedBox(width: 12),
                OutlinedButton(onPressed: () {}, child: const Text('Delete')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
