import 'package:flutter/material.dart';

enum Status {
  ok,
  caution,
  warning,
}

class ValidityCard extends StatefulWidget {
  final String topic;
  final String? firstLine;
  final String? secondLine;
  final Status? status;
  late final Color color;
  ValidityCard(
      {required this.topic,
      this.firstLine,
      this.secondLine,
      this.status,
      super.key}) {
    switch (status) {
      case Status.ok:
        {
          color = Colors.green.shade50;
        }
        break;
      case Status.caution:
        {
          color = Colors.amber.shade50;
        }
        break;
      case Status.warning:
        {
          color = Colors.red.shade50;
        }
        break;
      default:
        {
          color = Colors.green.shade50;
        }
        break;
    }
  }

  @override
  State<ValidityCard> createState() => _ValidityCardState();
}

class _ValidityCardState extends State<ValidityCard> {
  var isExpand = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: widget.color,
      child: Column(
        children: [
          ListTile(
              title: Text(widget.topic,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
              trailing: IconButton(
                  onPressed: () {
                    setState(() {
                      isExpand = !isExpand;
                    });
                  },
                  icon:
                      Icon(isExpand ? Icons.expand_less : Icons.expand_more))),
          if (isExpand && widget.firstLine != null)
            ListTile(
                leading: Text(
              widget.firstLine!,
            )),
          if (isExpand && widget.secondLine != null)
            ListTile(
                leading: Text(
              widget.secondLine!,
            )),
        ],
      ),
    );
  }
}
