import 'package:bloc_fujitsu_app/modules/contador/ui/pages/counter_page.dart';
import 'package:bloc_fujitsu_app/modules/contador/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterBloc>(
      create: (context) => CounterBloc(),
      child: const MaterialApp(
        home: CounterPage(),
      ),
    );
  }
}
