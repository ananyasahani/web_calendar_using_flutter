import 'package:flutter/material.dart';

class AdminDashboard extends StatelessWidget {
  static const routeName = '/admin';
  const AdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Admin Dashboard')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Card(child: ListTile(title: const Text('API Settings'), subtitle: const Text('Configure integrations'))),
            const SizedBox(height: 12),
            Card(child: ListTile(title: const Text('User Management'), subtitle: const Text('Manage users and permissions'))),
          ],
        ),
      ),
    );
  }
}
