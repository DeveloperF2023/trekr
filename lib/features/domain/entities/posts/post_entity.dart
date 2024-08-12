import 'package:equatable/equatable.dart';
import 'package:trekr/features/domain/entities/posts/media_url_entity.dart';

class PostEntity extends Equatable {
  final int? id;
  final String? content;
  final String? createdAt;
  final List<MediaUrlEntity>? mediaUrls;

  const PostEntity({this.id, this.content, this.createdAt, this.mediaUrls});

  @override
  // TODO: implement props
  List<Object?> get props => [id, content, createdAt, mediaUrls];
}
