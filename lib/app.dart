import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterdex/cubits/connection/has_connection_cubit.dart';
import 'package:flutterdex/cubits/connection/has_connection_state.dart';
import 'package:rive/rive.dart';

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
    return BlocBuilder<HasConnectionCubit, HasConnectionState>(
        builder: (context, state) {
      if (state is HasConnectionConnecting) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            body: RiveAnimation.asset(
              'assets/splash/loading_splash.riv',
              fit: BoxFit.cover,
            ),
          ),
        );
      }
      if (state is IsConnected) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            body: Center(
              child: Text("HOMEE"),
            ),
          ),
        );
      }
      if (state is IsNotConnected) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            backgroundColor: Colors.yellow[400],
            body: Center(
              child: Text("NOT CONNECTED"),
            ),
          ),
        );
      }

      return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.red[400],
          body: Center(
            child: Text("ERROR"),
          ),
        ),
      );
    });
  }
}