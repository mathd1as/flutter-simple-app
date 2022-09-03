class PostModel {
  final int userId;
  final int id;
  final String title;
  final String body;

  PostModel(this.userId, this.id, this.body, this.title);

  factory PostModel.fromJson(Map json) {
    return PostModel(json['userId'], json['id'], json['body'], json['title']);
  }
}