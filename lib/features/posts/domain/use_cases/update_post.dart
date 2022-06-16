import 'package:clean_post/features/posts/domain/repositories/post_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/post_entity.dart';

class UpdatePostUseCase {
 final PostRepository repository;

  UpdatePostUseCase(this.repository);


  Future<Either<Failure,Unit>>call(Post post)async{
    return await repository.updatePost(post);
  }

}