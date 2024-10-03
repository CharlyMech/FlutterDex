import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterdex/cubits/navigation/navigation_cubit.dart';
import 'package:flutterdex/cubits/navigation/navigation_state.dart';
import 'package:flutterdex/models/generation.dart';

class GenerationsScreen extends StatefulWidget {
  const GenerationsScreen({super.key});

  @override
  State<GenerationsScreen> createState() => _GenerationsScreenState();
}

class _GenerationsScreenState extends State<GenerationsScreen> {
  List<String> list = <String>[
    // Temporary -> set manually
    'Generation I',
    'Generation II',
    'Generation III',
    'Generation IV',
    'Generation V',
    'Generation VI',
    'Generation VII',
    'Generation VIII',
    'Generation IX'
  ];
  late String valueList;

  @override
  void initState() {
    super.initState();
    valueList = list.first;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, NavigationState>(
        builder: (context, state) {
      // final generationsCubit = context.read<NavigationStateGenerations>();
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
          // Text(generationsCubit.toString())
        ],
      );
    });
  }
}
