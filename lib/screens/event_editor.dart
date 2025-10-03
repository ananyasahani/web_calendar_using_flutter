import 'package:flutter/material.dart';

class EventEditor extends StatelessWidget {
  static const routeName = '/event_editor';
  const EventEditor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Edit Event')),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            TextField(decoration: const InputDecoration(labelText: 'Title')),
            const SizedBox(height: 8),
            TextField(decoration: const InputDecoration(labelText: 'Location')),
            const SizedBox(height: 8),
            TextField(decoration: const InputDecoration(labelText: 'Description'), maxLines: 4),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(child: ElevatedButton(onPressed: () {}, child: const Text('Save'))),
                const SizedBox(width: 12),
                OutlinedButton(onPressed: () => Navigator.pop(context), child: const Text('Cancel')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
