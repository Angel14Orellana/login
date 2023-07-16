import '../pages/bienvenida_page.dart';
import '../pages/home_page.dart';

enum MyRoutes {
  home,
  bienvenida
}

final routes = {
  MyRoutes.home.name: (context) =>  HomePage(),
  MyRoutes.bienvenida.name: (context)=> const BienvenidaPage()
};
