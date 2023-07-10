// import 'package:bloc_fujitsu_app/modules/contador/bloc/counter_bloc.dart';
import 'package:bloc_fujitsu_app/modules/contador/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// int myIncrement = 27;

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {},
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
                  // context.read<CounterBloc>().add(
                  //       IncrementCounterEvent(
                  //         incrementNum: myIncrement,
                  //       ),
                  //     );

                  context.read<CounterCubit>().increment(
                        incrementNum: state.counter,
                      );
                  print(state.counter);
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
                  // context.read<CounterBloc>().add(
                  //       DecrementCounterEvent(
                  //         decrementNum: state.counter,
                  //       ),
                  //     );
                  BlocProvider.of<CounterCubit>(context).decrement(
                    decrementNum: state.counter,
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
