import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_master/bloc/data/model/user_detail.dart';
import 'package:meta/meta.dart';

import '../data/model/product_detail.dart';
import '../data/repository/user_detail_repository.dart';

part 'user_detail_event.dart';
part 'user_detail_state.dart';

class UserDetailsBloc extends Bloc<UserDetailsEvent, UserDetailsState> {
  final UserDetailRepository userDetailRepository;

  UserDetailsBloc({required this.userDetailRepository}) : super(UserDetailsLoading()){
    on<UserDetailsInfo>(userDetailsInfo);
  }



  FutureOr<void> userDetailsInfo(
      UserDetailsInfo event, Emitter<UserDetailsState> emit) async {
    emit(UserDetailsLoading());
    try{
      ProductModel product = await userDetailRepository.fetchUserData();
      await Future.delayed(Duration(seconds: 5));
      emit(UserDetailsLoaded(userModel: product)) ;
    }catch(e)
    {
      emit(UserDetailsError()) ;
    }
  }
}
