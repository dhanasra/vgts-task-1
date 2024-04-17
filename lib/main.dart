import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'constants/theme_const.dart';
import 'routes/app_routes.dart';

void main() {
    WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Color(0xFF3b6cf2),
    statusBarIconBrightness: Brightness.light,
  ));
  
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.home,
      onGenerateRoute: (s) => RouteGenerator(settings: s).getRoute(),
      theme: ThemeConst.getApplicationTheme(),
    );
  }
}