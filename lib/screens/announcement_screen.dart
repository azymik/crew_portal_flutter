import 'package:flutter/material.dart';

import 'package:crew_portal_flutter/widgets/custom_drawer.dart';

class AnnouncementScreen extends StatelessWidget {
  const AnnouncementScreen({super.key});

  static const routeName = '/announcement';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Announcement'),
      ),
      drawer: const CustomDrawer(),
      body: const Center(
        child: Text('Announcement Screen'),
      ),
    );
  }
}
