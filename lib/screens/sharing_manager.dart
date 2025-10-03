import 'package:flutter/material.dart';

class SharingManager extends StatelessWidget {
  static const routeName = '/sharing';
  const SharingManager({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sharing')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(child: ListTile(title: const Text('Share link'), subtitle: const Text('Public link to calendar'))),
          const SizedBox(height: 12),
          Card(child: ListTile(title: const Text('Manage invites'), subtitle: const Text('People with access'))),
        ],
      ),
    );
  }
}
