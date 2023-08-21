import 'package:equatable/equatable.dart';
import 'post_bloc.dart';

abstract class PostEvent extends Equatable{
  @override
  List<Object> get props => [];
}

class PostFethced extends PostEvent{}