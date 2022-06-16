import 'package:clean_post/features/posts/domain/repositories/post_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/post_entity.dart';

class DeletePostUseCase {
 final PostRepository repository;

  DeletePostUseCase(this.repository);


  Future<Either<Failure,Unit>>call(int postId)async{
    return await repository.deletePost(postId);
  }

}