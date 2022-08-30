import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  final String appBarTitle = 'app bar do app';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // void _incrementCounter() {
  //   setState(() {
   
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.appBarTitle),
      ),
      body: Center(
        child: ElevatedButton(child: Text('voltar'),
        onPressed: () {
          Navigator.of(context).pop();
        },
      )
      )
    );
  }
}