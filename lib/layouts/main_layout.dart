import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterdex/cubits/navigation/navigation_cubit.dart';
import 'package:flutterdex/cubits/navigation/navigation_state.dart';
import 'package:flutterdex/screens/error.dart';
import 'package:flutterdex/screens/generations.dart';
import 'package:flutterdex/screens/items.dart';
import 'package:flutterdex/screens/regions.dart';
import 'package:flutterdex/widgets/app_bar.dart';
import 'package:flutterdex/widgets/bottom_navigaton_appbar.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Color(0xFFDC0A2D), // primaryColor
      systemNavigationBarColor: Color(0xFF212121), // darkColor
      systemNavigationBarIconBrightness: Brightness.light,
    ));
  }

  Widget _buildScreen(state) {
    return switch (state) {
      NavigationStateInitial() ||
      NavigationStateLoading() =>
        const Center(child: CircularProgressIndicator()),
      NavigationStateGenerations() => GenerationsScreen(),
      NavigationStateRegions() => RegionsScreen(),
      NavigationStateItems() => ItemsScreen(),
      _ => const ErrorScreen(
          message: "The page you are looking for\ndoes not exist in this app")
    };
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: BlocBuilder<NavigationCubit, NavigationState>(
        builder: (context, state) {
      return Scaffold(
        backgroundColor: Color(0xFFF8F8F8), // bgColor
        extendBodyBehindAppBar: true,
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(100), child: PokedexAppBar()),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [const SizedBox(height: 100), _buildScreen(state)],
          ),
        ),
        bottomNavigationBar: PokedexBottomAppBar(),
      );
    }));
  }
}
