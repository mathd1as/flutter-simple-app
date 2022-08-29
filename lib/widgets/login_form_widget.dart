import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/home_page.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Usuário',
            ),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Por favor digite seu usuário';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Senha',
            ),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Por favor digite sua senha';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
               Navigator.of(context).push(
                 MaterialPageRoute(builder: (context) => const HomePage(title: 'teste',)));
              },
              child: const Text('Autenticar'),
            ),
          ),
        ],
      ),
    );
  }
}