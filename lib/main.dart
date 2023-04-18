import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:crew_portal_flutter/firebase_options.dart';
import 'package:crew_portal_flutter/screens/auth_screen.dart';
import 'package:crew_portal_flutter/screens/compose_ets_one_screen.dart';
import 'package:crew_portal_flutter/screens/ets_one_records_screen.dart';
import 'package:crew_portal_flutter/screens/home_screen.dart';
import 'package:crew_portal_flutter/screens/landing_screen.dart';
import 'package:crew_portal_flutter/screens/links_screen.dart';
import 'package:crew_portal_flutter/screens/announcement_screen.dart';
import 'package:crew_portal_flutter/screens/validity_records_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crew Portal',
      theme: ThemeData(
        fontFamily: 'Roboto',
        // brightness: Brightness.dark,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.indigo,
          // brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: const LandingScreen(),
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        AuthScreen.routeName: (context) => const AuthScreen(),
        ValidityRecordsScreen.routeName: (context) =>
            const ValidityRecordsScreen(),
        ETSOneRecordsScreen.routeName: (context) => const ETSOneRecordsScreen(),
        ComposeETSOneScreen.routeName: (context) => const ComposeETSOneScreen(),
        AnnouncementScreen.routeName: (context) => const AnnouncementScreen(),
        LinksScreen.routeName: (context) => const LinksScreen(),
      },
    );
  }
}
