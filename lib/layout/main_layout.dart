import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterdex/cubits/navigation/navigation_cubit.dart';
import 'package:flutterdex/cubits/navigation/navigation_state.dart';
import 'package:flutterdex/screens/error.dart';
import 'package:flutterdex/screens/generations.dart';
import 'package:flutterdex/widgets/app_bar.dart';
import 'package:flutterdex/widgets/bottom_navigaton_appbar.dart';
import 'package:rive/rive.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Color(0xFFDC0A2D), // primaryColor
      systemNavigationBarColor: Color(0xFF212121), // darkColor
      systemNavigationBarIconBrightness: Brightness.light,
    ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF8F8F8), // bgColor
        extendBodyBehindAppBar: true,
        appBar: PokedexAppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 100),
              Container(
                height: 300,
                color: Colors.purple,
              ),
              Container(height: 400, color: Colors.pink),
              Container(height: 100, color: Colors.blue),
              Container(height: 600, color: Colors.green),
              Container(
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.purple,
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: PokedexBottomAppBar(),
      ),
    );
  }
}
