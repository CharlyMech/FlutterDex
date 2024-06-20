import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterdex/cubits/connection/has_connection_cubit.dart';
import 'package:flutterdex/cubits/connection/has_connection_state.dart';
import 'package:flutterdex/screens/error.dart';
import 'package:flutterdex/screens/home.dart';
import 'package:flutterdex/screens/splash_screen.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "FlutterDex",
        home: BlocBuilder<HasConnectionCubit, HasConnectionState>(
            builder: (context, state) {
          return switch (state) {
            HasConnectionConnecting() => const SplashScreen(),
            IsConnected() => Home(),
            IsNotConnected() => const ErrorScreen(
                message: "Device has no internet connection",
              ),
            _ => const ErrorScreen(
                message: "Some error occurred\nPlease try later")
          };
        }));
  }
}
