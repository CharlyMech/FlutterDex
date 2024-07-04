import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutterdex/app.dart';
import 'package:flutterdex/cubits/connection/has_connection_cubit.dart';
import 'package:flutterdex/repositories/has_connection_repository.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await _setPreferredOrientations();
  await dotenv.load(fileName: ".env");

  /* final themeStr = await rootBundle.loadString('assets/appainter_theme.json');
  final themeJson = jsonDecode(themeStr);
  final theme = ThemeDecoder.decodeThemeData(themeJson)!; */
  runApp(BlocProvider(
    create: (context) => HasConnectionCubit(HasConnectionRepository()),
    lazy: false,
    child: const App(),
  ));
}

Future<void> _setPreferredOrientations() {
  return SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
}
