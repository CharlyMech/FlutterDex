import 'package:flutter/material.dart';

class GenerationsScreen extends StatefulWidget {
  const GenerationsScreen({super.key});

  @override
  State<GenerationsScreen> createState() => _GenerationsScreenState();
}

class _GenerationsScreenState extends State<GenerationsScreen> {
  List<String> list = <String>['One', 'Two', 'Three', 'Four'];
  late String valueList;

  @override
  void initState() {
    super.initState();
    valueList = list.first;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            DropdownButton<String>(
              value: valueList,
              borderRadius: BorderRadius.circular(10),
              onChanged: (String? value) {
                setState(() {
                  valueList = value!;
                });
              },
              items: list.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ],
        ),
      ],
    );
  }
}
