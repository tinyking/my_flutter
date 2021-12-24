
import 'package:flutter/material.dart';
import 'package:my_flutter/login.dart';
import 'package:my_flutter/routes.dart';


///
///
class RallyApp extends StatelessWidget {
  const RallyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      restorationScopeId: "rally_app",
      title: 'Rally',
      initialRoute: loginRoute,
      routes: <String, WidgetBuilder> {
        // homeRoute: (context) => const HomePage(),
        loginRoute: (context) => const LoginPage(),
      },
    );
  }

}