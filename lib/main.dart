import 'package:bloc_fujitsu_app/modules/contador/cubit/counter_cubit.dart';
import 'package:bloc_fujitsu_app/modules/contador/ui/pages/counter_page.dart';
// import 'package:bloc_fujitsu_app/modules/contador/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // BlocProvider<CounterBloc>(
        //   create: (context) => CounterBloc(),
        // ),
        BlocProvider<CounterCubit>(
          create: (context) => CounterCubit(),
        ),
      ],
      child: const MaterialApp(
        home: CounterPage(),
      ),
    );
  }
}
