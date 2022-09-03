import 'package:helloworld/models/post_model.dart';

abstract class HomeRepository {
  Future<List<PostModel>> getList();
}