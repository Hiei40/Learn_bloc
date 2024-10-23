import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'BlocStateManagmentTemplates/UI/UserUIScreen.dart';
import 'BlocStateManagmentTemplates/bloc/user_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
          create: (BuildContext context) => UsersBloc(), child: MyBlocPage()),
    );
  }
}