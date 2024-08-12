import 'package:trekr/features/domain/entities/search/search_entity.dart';

import '../posts/post_model.dart';
import '../user/nearby_user_model.dart';

class SearchModel extends SearchEntity {
  List<NearbyUserModel>? users;
  List<PostModel>? posts;

  SearchModel({this.users, this.posts});

  SearchModel.fromJson(Map<String, dynamic> json) {
    if (json['users'] != null) {
      users = <NearbyUserModel>[];
      json['users'].forEach((v) {
        users!.add(NearbyUserModel.fromJson(v));
      });
    }
    if (json['posts'] != null) {
      posts = <PostModel>[];
      json['posts'].forEach((v) {
        posts!.add(PostModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (users != null) {
      data['users'] = users!.map((v) => v.toJson()).toList();
    }
    if (posts != null) {
      data['posts'] = posts!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
