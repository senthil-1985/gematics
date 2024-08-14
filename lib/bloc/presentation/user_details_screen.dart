import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_master/bloc/data/repository/user_detail_repository.dart';
import 'package:flutter_master/bloc/domain/user_detail_bloc.dart';
import 'package:flutter_master/bloc/presentation/widgets/product_details_widget.dart';
import 'package:flutter_master/bloc/presentation/widgets/user_details_widget.dart';

class UserDetailsScreen extends StatefulWidget {
  const UserDetailsScreen({super.key});

  @override
  State<UserDetailsScreen> createState() => _UserDetailsScreenState();
}

class _UserDetailsScreenState extends State<UserDetailsScreen> {
  late final UserDetailRepository _userDetailRepository;
  late final UserDetailsBloc _userDetailBloc;

  @override
  void initState() {
    _userDetailRepository = UserDetailRepository();
    _userDetailBloc =
        UserDetailsBloc(userDetailRepository: _userDetailRepository);
    _userDetailBloc.add(UserDetailsInfo());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: Center(
        child: BlocBuilder(
            bloc: _userDetailBloc,
            builder: (BuildContext context,UserDetailsState state) {
              if (state is UserDetailsLoading) {
                return CircularProgressIndicator();
              }
              if (state is UserDetailsLoaded) {
                //return UserDetailsWidget(userModel: state.userModel);
                return ProductDetail(userModel: state.userModel);
              }
              return Text('Error while fetch');
            }
        ),
      ),
    );
  }
}
