import 'package:dartz/dartz.dart';
import 'package:trekr/features/domain/entities/messages/message_entity.dart';

import '../../../../core/error/failure.dart';
import '../../repositories/repository.dart';

class GetMessageUseCase {
  final Repository repository;
  GetMessageUseCase({required this.repository});
  Future<Either<Failure, List<MessageEntity>>> callback() {
    return repository.getMessages();
  }
}
