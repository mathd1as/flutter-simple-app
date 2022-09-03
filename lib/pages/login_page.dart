import 'package:flutter/material.dart';
import 'package:helloworld/components/login/custom_login_button_component.dart';
import 'package:helloworld/controllers/login_controller.dart';

class LoginPage extends StatelessWidget {
  final LoginController _controller = LoginController();

  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.catching_pokemon,
             size: 98,
            ),
            TextField(
              decoration: const InputDecoration(label: Text('Login')),
              onChanged: _controller.setLogin,
            ),
            TextField(
              decoration: const InputDecoration(label: Text('Senha')), 
              obscureText: true,
              onChanged: _controller.setPass,
            ),
            const SizedBox(height: 15,),
            CustomLoginButtonComponent(
              loginController: _controller,
            )
          ],
        )
      )
    );
  }
}