import 'package:flutter/material.dart';

import 'package:crew_portal_flutter/widgets/custom_drawer.dart';
import 'package:crew_portal_flutter/widgets/validity_card.dart';

class ValidityRecordsScreen extends StatelessWidget {
  const ValidityRecordsScreen({super.key});

  static const routeName = '/validity-records';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Validity Records'),
        ),
        drawer: const CustomDrawer(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: ListView(
            children: [
              const Card(
                child: ListTile(
                  subtitle: Text(
                      'หน้านี้จะใช้ข้อมูลจาก AIMS ซึ่งจะทำให้สามารถ tracking ได้แม่นยำ และเป็น source เดียวกัน โดยจะใช้วิธี export ทุกสิ้นเดือน โดย admin ซึ่งขึ้นตอนนั้นไม่ยาก จะทำเป็น one-click button ให้'),
                ),
              ),
              ValidityCard(
                topic: 'LICENSE ATPL/CPL',
                firstLine: 'valid till: 31/10/2023',
                secondLine: 'last done: 18/04/2023',
              ),
              ValidityCard(
                topic: 'Passport',
                firstLine: 'valid till: 31/03/2023',
                status: Status.warning,
              ),
              ValidityCard(
                topic: 'SEP TC CC FD/XJ',
                firstLine: 'valid till: 30/04/2023',
                secondLine: 'last done: 05/10/2022',
                status: Status.caution,
              ),
              ValidityCard(
                topic: 'Take off and Landing',
                firstLine: 'valid till: 31/10/2023',
                secondLine: 'last done: 18/04/2023',
              ),
              ValidityCard(
                topic: 'LOFT 6mth CPT XJ',
                firstLine: 'valid till: 31/10/2023',
                secondLine: 'last done: 18/04/2023',
              ),
              ValidityCard(
                topic: 'OPC 6mth CPT-XJ',
                firstLine: 'valid till: 31/10/2023',
                secondLine: 'last done: 18/04/2023',
              ),
              ValidityCard(
                topic: 'AVSEC XJ',
                firstLine: 'valid till: 31/10/2023',
                secondLine: 'last done: 18/04/2023',
              ),
              ValidityCard(
                topic: 'IR EM- FDPQXJXT',
                firstLine: 'valid till: 31/10/2023',
                secondLine: 'last done: 18/04/2023',
              ),
              ValidityCard(
                topic: 'ELP Level 4 5 &6',
                firstLine: 'valid till: 31/10/2023',
                secondLine: 'last done: 18/04/2023',
              ),
              ValidityCard(
                topic: 'Line Check 12mth EOM',
                firstLine: 'valid till: 31/10/2023',
                secondLine: 'last done: 18/04/2023',
              ),
              ValidityCard(
                topic: 'Medical End Date',
                firstLine: 'valid till: 31/10/2023',
                secondLine: 'last done: 18/04/2023',
              ),
              ValidityCard(
                topic: 'Dangerous Goods',
                firstLine: 'valid till: 31/10/2023',
                secondLine: 'last done: 18/04/2023',
              ),
              ValidityCard(
                topic: 'SMS and ERP',
                firstLine: 'valid till: 31/10/2023',
                secondLine: 'last done: 18/04/2023',
              ),
              ValidityCard(
                topic: 'Take Off and Landing',
                firstLine: 'valid till: 31/10/2023',
                secondLine: 'last done: 18/04/2023',
              ),
              ValidityCard(
                topic: 'CRM XJ',
                firstLine: 'valid till: 31/10/2023',
                secondLine: 'last done: 18/04/2023',
              ),
              ValidityCard(
                topic: 'DG XJ/FD',
                firstLine: 'valid till: 31/10/2023',
                secondLine: 'last done: 18/04/2023',
              ),
            ],
          ),
        ));
  }
}
