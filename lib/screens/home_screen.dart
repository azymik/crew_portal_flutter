import 'package:flutter/material.dart';

import 'package:crew_portal_flutter/widgets/custom_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const routeName = '/home-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      drawer: const CustomDrawer(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: ListView(
            children: [
              const Card(
                child: ListTile(
                  subtitle: Text(
                      'เป็นหน้าแรกที่จะเจอหลังจากเปิด App มา ใช้บอกข้อมูลสำคัญ หรือใช้บ่อยๆ นอกจากนี้ หากมี notification อะไรสำคัญ จะให้มาอยู่ที่หน้านี้ด้วย'),
                ),
              ),
              const Card(
                  child: ListTile(
                leading: Icon(Icons.library_books),
                title: Text('License'),
                subtitle: Text('TH.FCL.1234567'),
                trailing: Text('valid till 06/06/23'),
              )),
              const SizedBox(
                height: 8,
              ),
              const Card(
                child: ListTile(
                  leading: Icon(Icons.local_hospital_rounded),
                  title: Text('Medical'),
                  trailing: Text('valid till 06/06/23'),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Card(
                  child: ListTile(
                leading: Icon(Icons.menu_book),
                title: Text('Passport'),
                subtitle: Text('AB1234567'),
                trailing: Text('valid till 06/06/23'),
              )),
              const SizedBox(
                height: 8,
              ),
              const Card(
                  child: ListTile(
                leading: Icon(Icons.language),
                title: Text('ELP'),
                trailing: Text('valid till 06/06/23'),
              )),
              const SizedBox(
                height: 8,
              ),
              Card(
                  child: Column(
                children: [
                  const ListTile(
                    leading: Icon(Icons.local_airport_outlined),
                    title: Text('Autoland (A/C)'),
                    subtitle: Text('last done 10/12/22'),
                    trailing: Text('valid till 06/06/23'),
                    isThreeLine: true,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            child: TextField(
                                controller:
                                    null, //editing controller of this TextField
                                decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    contentPadding: EdgeInsets.all(8),
                                    suffixIcon: Icon(
                                      Icons.calendar_today,
                                    ),
                                    label: Text(
                                      'insert new last done',
                                    )),
                                readOnly:
                                    true, // when true user cannot edit text
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
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: Icon(Icons.upload),
                        )
                      ],
                    ),
                  ),
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
