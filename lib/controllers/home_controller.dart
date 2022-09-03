import 'package:helloworld/models/post_model.dart';
import 'package:helloworld/repositories/home_repository.dart';
import 'package:flutter/material.dart';

class HomeController {
  final HomeRepository _homeRepository;
  HomeController(this._homeRepository);
  ValueNotifier<List<PostModel>> posts = ValueNotifier<List<PostModel>>([]);

  fetch() async {
    posts.value = await _homeRepository.getList();
  }
}