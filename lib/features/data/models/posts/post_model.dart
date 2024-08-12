import 'package:trekr/features/data/models/posts/media_url_model.dart';
import 'package:trekr/features/domain/entities/posts/post_entity.dart';

class PostModel extends PostEntity {
  int? id;
  String? content;
  String? createdAt;
  List<MediaUrlsModel>? mediaUrls;

  PostModel({this.id, this.content, this.createdAt, this.mediaUrls});

  PostModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    content = json['content'];
    createdAt = json['createdAt'];
    if (json['mediaUrls'] != null) {
      mediaUrls = <MediaUrlsModel>[];
      json['mediaUrls'].forEach((v) {
        mediaUrls!.add(MediaUrlsModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['content'] = content;
    data['createdAt'] = createdAt;
    if (mediaUrls != null) {
      data['mediaUrls'] = mediaUrls!.map((v) => v.toJson()).toList();
    }
    return data;
  }

  static List<PostModel> fromJsonList(List<dynamic> jsonList) {
    return jsonList.map((json) => PostModel.fromJson(json)).toList();
  }
}
