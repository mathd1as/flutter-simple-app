import 'package:flutter/material.dart';
import 'package:helloworld/controllers/login_controller.dart';

class LoginPage extends StatelessWidget {
  LoginController _controller = LoginController();

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
            Icon(Icons.people,
             size: 98,
            ),
            TextField(
              decoration: InputDecoration(label: Text('Login')),
              onChanged: _controller.setLogin,
            ),
            TextField(
              decoration: InputDecoration(label: Text('Senha')), 
              obscureText: true,
              onChanged: _controller.setPass,
            ),
            Spacer(),
            ElevatedButton(onPressed: () {
              _controller.auth();
            },
            child: Text('Login'))
          ],
        )
      )
    );
  }
}