import 'package:flutter/material.dart';
import 'package:login/src/constantes/routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(useMaterial3: true),
      // home: const HomePage(),
      initialRoute: MyRoutes.home.name,
      routes: routes,
      onGenerateRoute: (RouteSettings setting) {
        print(setting.name);

        return MaterialPageRoute(
            builder: (BuildContext context) => const Scaffold(
                  body: Center(
                    child: Text('No se encontro la ruta'),
                  ),
                ));
      },
    );
  }
}
