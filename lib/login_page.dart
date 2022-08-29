import 'package:flutter/material.dart';
import 'package:helloworld/widgets/login_form_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // void _incrementCounter() {
  //   setState(() {
   
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MyStatefulWidget()
      )
    );
  }
}