import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/calendar_dashboard.dart';
import 'screens/event_editor.dart';
import 'screens/event_detail.dart';
import 'screens/public_calendar_view.dart';
import 'screens/admin_dashboard.dart';
import 'screens/notifications_panel.dart';
import 'screens/user_profile_screen.dart';
import 'screens/sharing_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WebCalendar',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      initialRoute: LoginScreen.routeName,
      routes: {
        LoginScreen.routeName: (context) => const LoginScreen(),
        CalendarDashboard.routeName: (context) => const CalendarDashboard(),
        EventEditor.routeName: (context) => const EventEditor(),
        EventDetail.routeName: (context) => const EventDetail(),
        PublicCalendarView.routeName: (context) => const PublicCalendarView(),
        AdminDashboard.routeName: (context) => const AdminDashboard(),
        NotificationsPanel.routeName: (context) => const NotificationsPanel(),
        UserProfileScreen.routeName: (context) => const UserProfileScreen(),
        SharingManager.routeName: (context) => const SharingManager(),
      },
    );
  }
}

