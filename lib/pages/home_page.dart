import 'package:flutter/material.dart';
import 'package:helloworld/controllers/home_controller.dart';
import 'package:helloworld/models/post_model.dart';
import 'package:helloworld/repositories/home_repository_mock.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController _controller = HomeController(HomeRepositoryMock());

  @override
  void initState() {
    super.initState();
    _controller.fetch();
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: ValueListenableBuilder<List<PostModel>>(
       valueListenable: _controller.posts,
       builder: (_, list, __) {
         return ListView.builder(
           itemBuilder: (_, idx) => ListTile(
            title: Text(list[idx].title)
          )
        );
       },
      )
   );
  }
}