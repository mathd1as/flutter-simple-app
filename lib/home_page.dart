import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // void _incrementCounter() {
  //   setState(() {
   
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(child: Text('Home teste'),
        onPressed: () {
          Navigator.of(context).pop();
        },
      )
      )
    );
  }
}