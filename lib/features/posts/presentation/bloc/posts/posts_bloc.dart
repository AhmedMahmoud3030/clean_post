import 'package:bloc/bloc.dart';
import 'package:clean_post/features/posts/domain/use_cases/get_all_posts.dart';
import 'package:equatable/equatable.dart';

import '../../../domain/entities/post_entity.dart';

part 'posts_event.dart';
part 'posts_state.dart';

class PostsBloc extends Bloc<PostsEvent, PostsState> {
  final GetAllPostUseCase getAllPosts;
  PostsBloc({
    required this.getAllPosts,
  }) : super(PostsInitial()) {
    on<PostsEvent>((event, emit) async {
      if (event is GetAllPostsEvent) {
        emit(LoadingPostsState());
        final posts = await getAllPosts.call();
        //todo here you will start
      } else if (event is RefreshPostsEvent) {
        //
      }
    });
  }
}
