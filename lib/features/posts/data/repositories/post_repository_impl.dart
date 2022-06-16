import 'package:clean_post/features/posts/domain/entities/post_entity.dart';
import 'package:clean_post/core/error/failure.dart';
import 'package:clean_post/features/posts/domain/repositories/post_repository.dart';
import 'package:dartz/dartz.dart';

class PostsRepositoryImpl implements PostRepository {
  final RemoteDataSource remoteDataSource;
  final LocalDataSource localDataSource;

  @override
  Future<Either<Failure, List<Post>>> getAllPosts() async {
    await remoteDataSource.getAllPosts();
  }

  @override
  Future<Either<Failure, Unit>> addPost(Post post) {
    // TODO: implement addPost
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> deletePost(int id) {
    // TODO: implement deletePost
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> updatePost(Post post) {
    // TODO: implement updatePost
    throw UnimplementedError();
  }
}
