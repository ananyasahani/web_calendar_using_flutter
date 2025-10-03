import 'package:flutter/material.dart';

class CalendarDashboard extends StatelessWidget {
  static const routeName = '/calendar';
  const CalendarDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calendar Dashboard'),
        actions: [
          IconButton(onPressed: () => Navigator.pushNamed(context, '/notifications'), icon: const Icon(Icons.notifications)),
          IconButton(onPressed: () => Navigator.pushNamed(context, '/profile'), icon: const Icon(Icons.person)),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(child: Text('Menu')),
            ListTile(title: const Text('Dashboard'), onTap: () => Navigator.pop(context)),
            ListTile(title: const Text('Admin'), onTap: () => Navigator.pushNamed(context, '/admin')),
            ListTile(title: const Text('Public View'), onTap: () => Navigator.pushNamed(context, '/public')),
            ListTile(title: const Text('Sharing'), onTap: () => Navigator.pushNamed(context, '/sharing')),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Month View', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      SizedBox(height: 12),
                      Expanded(child: CalendarGrid()),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  ElevatedButton.icon(onPressed: () => Navigator.pushNamed(context, '/event_editor'), icon: const Icon(Icons.add), label: const Text('New Event')),
                  const SizedBox(height: 12),
                  Expanded(child: Card(child: Padding(padding: EdgeInsets.all(12), child: EventList()))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CalendarGrid extends StatelessWidget {
  const CalendarGrid({super.key});

  @override
  Widget build(BuildContext context) {
    // Simple placeholder grid for the month
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 7, childAspectRatio: 1.2),
      itemCount: 42,
      itemBuilder: (context, index) {
        final day = (index % 31) + 1;
        return Card(
          margin: const EdgeInsets.all(4),
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('$day', style: const TextStyle(fontWeight: FontWeight.bold)),
                const Spacer(),
                const Text('• Event A', style: TextStyle(fontSize: 12)),
              ],
            ),
          ),
        );
      },
    );
  }
}

class EventList extends StatelessWidget {
  const EventList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 8,
      itemBuilder: (context, i) => ListTile(
        title: Text('Event ${i + 1}'),
        subtitle: const Text('Time • Location'),
        onTap: () => Navigator.pushNamed(context, '/event_detail'),
      ),
    );
  }
}
