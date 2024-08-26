import 'package:dartz/dartz.dart';
import 'package:trekr/features/domain/entities/comment/comment_entity.dart';

import '../../../../core/error/failure.dart';
import '../../repositories/repository.dart';

class FetchCommentsByPostIdUseCase {
  final Repository repository;
  FetchCommentsByPostIdUseCase({required this.repository});
  Future<Either<Failure, List<CommentEntity>>> callback(int postId) {
    return repository.fetchCommentsByPostID(postId);
  }
}
