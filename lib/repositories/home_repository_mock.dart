import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:helloworld/models/post_model.dart';
import 'package:helloworld/repositories/home_repository.dart';


class HomeRepositoryMock implements HomeRepository {
  @override
  Future<List<PostModel>> getList() async {
    print('testando123');
    var value = await rootBundle.loadString('assets/data.json');
    print(value);
    List postJson = jsonDecode(value);
    return postJson.map((e) => PostModel.fromJson(e)).toList();
  }
}