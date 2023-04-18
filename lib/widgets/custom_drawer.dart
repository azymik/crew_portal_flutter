import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:crew_portal_flutter/providers/auth_provider.dart';
import 'package:crew_portal_flutter/screens/compose_ets_one_screen.dart';
import 'package:crew_portal_flutter/screens/ets_one_records_screen.dart';
import 'package:crew_portal_flutter/screens/home_screen.dart';
import 'package:crew_portal_flutter/screens/links_screen.dart';
import 'package:crew_portal_flutter/screens/announcement_screen.dart';
import 'package:crew_portal_flutter/screens/validity_records_screen.dart';

class CustomDrawer extends ConsumerWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth = ref.watch(authProvider);
    return NavigationDrawer(
      children: [
        DrawerHeader(
          child: Column(
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(auth.currentUser!.photoURL!),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(auth.currentUser!.displayName!.trim()),
            ],
          ),
        ),
        ListTile(
          leading: const Icon(Icons.home),
          title: const Text('Home'),
          onTap: () {
            Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
          },
        ),
        ListTile(
          leading: const Icon(Icons.grading),
          title: const Text('Validity Records'),
          onTap: () {
            Navigator.of(context)
                .pushReplacementNamed(ValidityRecordsScreen.routeName);
          },
        ),
        ListTile(
          leading: const Icon(Icons.checklist),
          title: const Text('eTS1 Records'),
          onTap: () {
            Navigator.of(context)
                .pushReplacementNamed(ETSOneRecordsScreen.routeName);
          },
        ),
        const Divider(
          indent: 16,
          endIndent: 16,
        ),
        ListTile(
          leading: const Icon(Icons.create),
          title: const Text('Compose eTS1 (INST)'),
          onTap: () {
            Navigator.of(context)
                .pushReplacementNamed(ComposeETSOneScreen.routeName);
          },
        ),
        ListTile(
          leading: const Icon(Icons.broadcast_on_home),
          title: const Text('Announcement'),
          onTap: () {
            Navigator.of(context)
                .pushReplacementNamed(AnnouncementScreen.routeName);
          },
        ),
        ListTile(
          leading: const Icon(Icons.link),
          title: const Text('Links'),
          onTap: () {
            Navigator.of(context).pushReplacementNamed(LinksScreen.routeName);
          },
        ),
        ListTile(
          leading: const Icon(Icons.logout),
          title: const Text('Logout'),
          onTap: () {
            Navigator.of(context).pop();
            Navigator.of(context).pushReplacementNamed('/');
            auth.signOut();
          },
        ),
      ],
    );
  }
}
