import 'package:dartz/dartz.dart';
import 'package:trekr/features/domain/entities/comment/comment_entity.dart';

import '../../../../core/error/failure.dart';
import '../../repositories/repository.dart';

class CreateCommentUseCase {
  final Repository repository;
  CreateCommentUseCase({required this.repository});
  Future<Either<Failure, CommentEntity>> callback(int postId, String content) {
    return repository.createComment(postId, content);
  }
}
