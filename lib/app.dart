import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterdex/cubits/connection/has_connection_cubit.dart';
import 'package:flutterdex/cubits/connection/has_connection_state.dart';
import 'package:flutterdex/cubits/navigation/navigation_cubit.dart';
import 'package:flutterdex/cubits/side_menu/side_menu_cubit.dart';
import 'package:flutterdex/layouts/animated_side_menu_layout.dart';
import 'package:flutterdex/repositories/navigation_repository.dart';
import 'package:flutterdex/screens/error.dart';
import 'package:flutterdex/screens/splash_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FlutterDex",
      debugShowCheckedModeBanner: false,
      home: BlocBuilder<HasConnectionCubit, HasConnectionState>(
        builder: (context, state) {
          return switch (state) {
            HasConnectionConnecting() => const SplashScreen(),
            IsConnected() => MultiBlocProvider(
                providers: [
                  BlocProvider<NavigationCubit>(
                    create: (context) => NavigationCubit(NavigationRepository())
                      ..fetchInitialData(),
                    lazy: false,
                  ),
                  BlocProvider<SideMenuCubit>(
                    create: (context) => SideMenuCubit(),
                  ),
                ],
                child: AnimatedSideMenuLayout(),
              ),
            IsNotConnected() => const ErrorScreen(
                message: "Device has no internet connection",
              ),
            _ => const ErrorScreen(
                message: "Some error occurred\nPlease try later",
              ),
          };
        },
      ),
    );
  }
}
