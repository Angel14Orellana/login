import 'package:flutter/material.dart';
import 'package:login/src/constantes/routes.dart';

class HomePage extends StatelessWidget {
  final userController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              height: 200,
              image: AssetImage('lib/assets/imagenes/login.png'),
            ),
            TextField(
              decoration: InputDecoration(hintText: 'Usuario'),
              controller: userController,
            ),
            TextField(
              decoration: InputDecoration(hintText: 'Contraseña'),
              obscureText: true,
              controller: passwordController,
            ),
            SizedBox(height: 30.0),
            ElevatedButton(
              onPressed: () {
                validateLogin(
                    context, userController.text, passwordController.text);
              },
              child: Text('Iniciar sesion'),
            ),
          ],
        ),
      ),
    );
  }
}

void validateLogin(BuildContext context, String email, String password) {
  if (email == 'aaorellanaf@unah.hn' && password == '20182001299') {
    Navigator.pushNamed(context, MyRoutes.bienvenida.name);
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Ocurrio un error con el usuario o contraseña')),
    );
  }
}
