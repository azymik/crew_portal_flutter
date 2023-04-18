import 'package:flutter/material.dart';

import 'package:crew_portal_flutter/widgets/custom_drawer.dart';

class ETSOneRecordsScreen extends StatelessWidget {
  const ETSOneRecordsScreen({super.key});

  static const routeName = '/ets-one-records';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('eTS1 Records'),
      ),
      drawer: const CustomDrawer(),
      body: const Center(
        child: Text('eTS1 Records Screen'),
      ),
    );
  }
}
