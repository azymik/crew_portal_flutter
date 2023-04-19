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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: ListView(
          children: const [
            Card(
              child: ListTile(
                subtitle: Text(
                    'eTS1 record ที่ผ่านมา โดยจะเป็น list และสามารถ tap เข้าไปดูรายละเอียดได้'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
