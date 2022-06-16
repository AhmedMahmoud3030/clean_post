import 'package:clean_post/features/posts/domain/repositories/post_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/post_entity.dart';

class GetAllPostUseCase {
 final PostRepository repository;

  GetAllPostUseCase(this.repository);


  Future<Either<Failure,List<Post>>>call()async{
    return await repository.getAllPosts();
  }

}