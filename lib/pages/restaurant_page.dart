import 'package:flutter/material.dart';
import 'package:helloworld/models/post_model.dart';

class RestaurantPage extends StatelessWidget {
  const RestaurantPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PostModel args = ModalRoute.of(context)!.settings.arguments as PostModel;

    return Scaffold(
      appBar: AppBar(title: Text(args.title)),
      body: Container(
        padding: EdgeInsets.all(28),
        child: Column(
          children: [
            Text(args.title),
            SizedBox(height: 24),
            Text(args.body)
          ],
        )
      )
    );
  }
}