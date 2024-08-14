part of 'user_detail_bloc.dart';

@immutable
abstract class UserDetailsState {}

class UserDetailsLoading extends UserDetailsState {
  @override
  String toString() {
    return 'UserDetailLoading';
  }
}

class UserDetailsLoaded extends UserDetailsState {
  final ProductModel userModel;

  UserDetailsLoaded({required this.userModel});

  @override
  String toString() {
    return 'UserDetailLoaded';
  }
}

class UserDetailsError extends UserDetailsState{
  @override
  String toString(){
    return 'UserDetailError';
  }
}
