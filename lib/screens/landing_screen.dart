import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:crew_portal_flutter/providers/auth_provider.dart';
import 'package:crew_portal_flutter/screens/auth_screen.dart';
import 'package:crew_portal_flutter/screens/home_screen.dart';

class LandingScreen extends ConsumerWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth = ref.watch(authProvider);
    return StreamBuilder(
        stream: auth.authStateChanges(),
        builder: (ctx, userSnapshot) {
          if (userSnapshot.hasData) {
            return const HomeScreen();
          }
          return const AuthScreen();
        });
  }
}
