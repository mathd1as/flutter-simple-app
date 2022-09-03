import 'package:flutter/material.dart';
import 'package:helloworld/controllers/login_controller.dart';

class LoginPage extends StatelessWidget {
  final LoginController _controller = LoginController();

  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(28),
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
            ValueListenableBuilder<bool>(
              valueListenable: _controller.inLoader,
              builder: (_, inLoader, __) => inLoader ? const CircularProgressIndicator() : ElevatedButton(
              onPressed: () {
                _controller.auth().then((result) {
                    if (result) {
                     Navigator.of(context).pushReplacementNamed('/home');
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: const Text('Falha na autênticação'),
                        duration: const Duration(seconds: 10),
                        action: SnackBarAction(
                          label: 'Tentar novamente',
                          onPressed: () {}
                        )
                      ));
                    }
                  });
                },
                child: const Text('Login'))
              )
          ],
        )
      )
    );
  }
}