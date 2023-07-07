import 'package:bloc_fujitsu_app/modules/contador/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterBloc, CounterState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              (state.nombre.isEmpty) ? 'Jose' : state.nombre,
              style: const TextStyle(fontSize: 20.0),
            ),
          ),
          body: Center(
            child: Text(
              state.counter.toString(),
              style: const TextStyle(fontSize: 50),
            ),
          ),
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                heroTag: 'Suma',
                onPressed: () {
                  print("Hola mundo");
                  context.read<CounterBloc>().add(
                        IncrementCounterEvent(
                          incrementNum: state.counter,
                        ),
                      );
                },
                child: const Icon(Icons.add),
              ),
              SizedBox(
                width: 10,
              ),
              FloatingActionButton(
                heroTag: 'Resta',
                onPressed: () {
                  print("Hola mundo");
                  context.read<CounterBloc>().add(
                        DecrementCounterEvent(
                          decrementNum: state.counter,
                        ),
                      );
                },
                child: const Icon(Icons.accessibility),
              ),
            ],
          ),
        );
      },
    );
  }
}
