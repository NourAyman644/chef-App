import 'package:chef_app/core/bloc/global_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'App/my_app.dart';

void main() {
  runApp(
    BlocProvider(create: (context) => GlobalCubit(), child: MyApp()),
  );
}
