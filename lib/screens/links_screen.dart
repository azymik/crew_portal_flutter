import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:crew_portal_flutter/widgets/custom_drawer.dart';

class LinksScreen extends StatelessWidget {
  const LinksScreen({super.key});

  static const routeName = '/links';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Links'),
        ),
        drawer: const CustomDrawer(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: ListView(
            children: [
              ElevatedButton(
                  onPressed: () async {
                    final url = Uri.parse(
                        'https://sites.google.com/airasia.com/tax-flightops-dashboard/home');
                    if (!await launchUrl(url)) {
                      throw Exception('Could not launch $url');
                    }
                  },
                  child: const Text('Flight Ops')),
              ElevatedButton(
                  onPressed: () async {
                    final url = Uri.parse(
                        'https://sites.google.com/airasia.com/tax-training/home');
                    if (!await launchUrl(url)) {
                      throw Exception('Could not launch $url');
                    }
                  },
                  child: const Text('Training & Standards')),
              ElevatedButton(
                  onPressed: () async {
                    final url = Uri.parse(
                        'http://sites.google.com/airasia.com/taxsafety');
                    if (!await launchUrl(url)) {
                      throw Exception('Could not launch $url');
                    }
                  },
                  child: const Text('Safety')),
            ],
          ),
        ));
  }
}
