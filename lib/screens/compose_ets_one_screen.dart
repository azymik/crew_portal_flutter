import 'package:flutter/material.dart';

import 'package:crew_portal_flutter/widgets/custom_drawer.dart';

class ComposeETSOneScreen extends StatefulWidget {
  const ComposeETSOneScreen({super.key});

  static const routeName = '/compose-ets-one';

  @override
  State<ComposeETSOneScreen> createState() => _ComposeETSOneScreenState();
}

class _ComposeETSOneScreenState extends State<ComposeETSOneScreen> {
  final _dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Compose eTS1'),
      ),
      drawer: const CustomDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: [
              const Card(
                child: ListTile(
                  subtitle: Text(
                      'เข้าได้เฉพาะ instructor เพื่อกรอก eTS1 เบื้องต้นให้ใส่ได้ทีละคน เพื่อลดโอกาสผิดพลาด'),
                ),
              ),
              Card(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: TextField(
                            controller:
                                _dateController, //editing controller of this TextField
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                contentPadding: EdgeInsets.all(8),
                                suffixIcon: Icon(
                                  Icons.calendar_today,
                                ),
                                label: Text(
                                  'Form Date',
                                )),
                            readOnly: true, // when true user cannot edit text
                            onTap: () async {
                              await showDatePicker(
                                  context: context,
                                  initialDate:
                                      DateTime.now(), //get today's date
                                  firstDate: DateTime(
                                      2000), //DateTime.now() - not to allow to choose before today.
                                  lastDate: DateTime(2101));
                            }),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text('Candidate\'s Details'),
              Card(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              label: Text('Rank & Name'),
                              contentPadding: EdgeInsets.all(8),
                              border: OutlineInputBorder()),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              label: Text('Staff Number'),
                              contentPadding: EdgeInsets.all(8),
                              border: OutlineInputBorder()),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              label: Text('License Number'),
                              contentPadding: EdgeInsets.all(8),
                              border: OutlineInputBorder()),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              label: Text('License Expiry'),
                              contentPadding: EdgeInsets.all(8),
                              border: OutlineInputBorder()),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              label: Text('Other Crew Rank & Name'),
                              contentPadding: EdgeInsets.all(8),
                              border: OutlineInputBorder()),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              label: Text('Other Crew Staff Number'),
                              contentPadding: EdgeInsets.all(8),
                              border: OutlineInputBorder()),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text('Flight/Simulator Details'),
              Card(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              label: Text('Aircraft/Sim Registration'),
                              contentPadding: EdgeInsets.all(8),
                              border: OutlineInputBorder()),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              label: Text('A/C Type'),
                              contentPadding: EdgeInsets.all(8),
                              border: OutlineInputBorder()),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              label: Text('Airport / Route'),
                              contentPadding: EdgeInsets.all(8),
                              border: OutlineInputBorder()),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              label: Text('Sector Number'),
                              contentPadding: EdgeInsets.all(8),
                              border: OutlineInputBorder()),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              label: Text('Accumulated Sector'),
                              contentPadding: EdgeInsets.all(8),
                              border: OutlineInputBorder()),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text('Session Details'),
              Card(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          children: [
                            const Text('Session Type'),
                            Wrap(
                              spacing: 8.0,
                              children: [
                                ChoiceChip(
                                  label: const Text('LPC'),
                                  selected: false,
                                  onSelected: (value) {},
                                ),
                                ChoiceChip(
                                  label: const Text('OPC'),
                                  selected: false,
                                  onSelected: (value) {},
                                ),
                                ChoiceChip(
                                  label: const Text('Skill Test'),
                                  selected: false,
                                  onSelected: (value) {},
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Wrap(
                              spacing: 8.0,
                              children: [
                                ChoiceChip(
                                  label: const Text('ZFTT'),
                                  selected: false,
                                  onSelected: (value) {},
                                ),
                                ChoiceChip(
                                  label: const Text('Endorsement'),
                                  selected: false,
                                  onSelected: (value) {},
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Wrap(
                              spacing: 8.0,
                              children: [
                                ChoiceChip(
                                  label: const Text('LOFT'),
                                  selected: false,
                                  onSelected: (value) {},
                                ),
                                ChoiceChip(
                                  label: const Text('LFUS'),
                                  selected: true,
                                  onSelected: (value) {},
                                ),
                                ChoiceChip(
                                  label: const Text('RI'),
                                  selected: false,
                                  onSelected: (value) {},
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Wrap(
                              spacing: 8.0,
                              children: [
                                ChoiceChip(
                                  label: const Text('ILC'),
                                  selected: false,
                                  onSelected: (value) {},
                                ),
                                ChoiceChip(
                                  label: const Text('ALC'),
                                  selected: false,
                                  onSelected: (value) {},
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Wrap(
                              spacing: 8.0,
                              children: [
                                ChoiceChip(
                                  label: const Text('FBS'),
                                  selected: false,
                                  onSelected: (value) {},
                                ),
                                ChoiceChip(
                                  label: const Text('FFS'),
                                  selected: false,
                                  onSelected: (value) {},
                                ),
                                ChoiceChip(
                                  label: const Text('GND Class'),
                                  selected: false,
                                  onSelected: (value) {},
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text('RHS'),
                            SegmentedButton(
                              segments: const [
                                ButtonSegment(
                                  value: 'Initial',
                                  label: Text('Initial'),
                                ),
                                ButtonSegment(
                                  value: 'Recurrent',
                                  label: Text('Recurrent'),
                                ),
                                ButtonSegment(
                                  value: 'N/A',
                                  label: Text('N/A'),
                                ),
                              ],
                              selected: const {'N/A'},
                              onSelectionChanged: (p0) {},
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text('Instructor'),
                            SegmentedButton(
                              segments: const [
                                ButtonSegment(
                                  value: 'Initial',
                                  label: Text('Initial'),
                                ),
                                ButtonSegment(
                                  value: 'Renewal',
                                  label: Text('Renewal'),
                                ),
                                ButtonSegment(
                                  value: 'N/A',
                                  label: Text('N/A'),
                                ),
                              ],
                              selected: const {'N/A'},
                              onSelectionChanged: (p0) {},
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text('Recheck'),
                            SegmentedButton(
                              segments: const [
                                ButtonSegment(
                                  value: 'Progress CHK',
                                  label: Text('Progress CHK'),
                                ),
                                ButtonSegment(
                                  value: 'Remedial',
                                  label: Text('Remedial'),
                                ),
                                ButtonSegment(
                                  value: 'N/A',
                                  label: Text('N/A'),
                                ),
                              ],
                              selected: const {'N/A'},
                              onSelectionChanged: (p0) {},
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              label: Text('Aerodrome/Route Qualifications'),
                              contentPadding: EdgeInsets.all(8),
                              border: OutlineInputBorder()),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              label: Text('Special Operations'),
                              contentPadding: EdgeInsets.all(8),
                              border: OutlineInputBorder()),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              label: Text('Other Qualifications'),
                              contentPadding: EdgeInsets.all(8),
                              border: OutlineInputBorder()),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text('Pilot Type'),
                      SegmentedButton(
                        segments: const [
                          ButtonSegment(
                            value: 'Line',
                            label: FittedBox(child: Text('Line')),
                          ),
                          ButtonSegment(
                            value: 'CCQ',
                            label: Text('CCQ'),
                          ),
                          ButtonSegment(
                            value: 'STC',
                            label: Text('STC'),
                          ),
                          ButtonSegment(
                            value: 'IOE',
                            label: Text('IOE'),
                          ),
                          ButtonSegment(
                            value: 'CUC',
                            label: Text('CUC'),
                          ),
                        ],
                        selected: const {'Line'},
                        onSelectionChanged: (p0) {},
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
