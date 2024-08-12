import 'package:dartz/dartz.dart';
import 'package:trekr/features/domain/entities/posts/post_entity.dart';

import '../../../../core/error/failure.dart';
import '../../repositories/repository.dart';

class FetchPostsUserUseCase {
  final Repository repository;
  FetchPostsUserUseCase({required this.repository});
  Future<Either<Failure, List<PostEntity>>> callback() {
    return repository.fetchPostsUser();
  }
}
