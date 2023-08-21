import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:http/http.dart' as http;
import 'post_event.dart';
import 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState>{
  PostBloc({required this.httpClient}) : super(PostState()){

  }

  final http.Client httpClient;

  Future<void> _onFetched(
    PostFethced event,
    Emitter<PostState> emit,
  ) async {
    if(state.hasReachedMax) return;
    try {
      if (state.status == PostStatus.initial) {
        final post = await _fetchPost();
        return emit(state.copyWith(
          status: PostStatus.success,
          posts: posts
        ));
      }
    } catch (e) {
      
    }
  }
}