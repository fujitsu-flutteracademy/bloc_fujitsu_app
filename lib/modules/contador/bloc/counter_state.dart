part of 'counter_bloc.dart';

class CounterState {
  final int counter;
  final String nombre;

  CounterState({required this.counter, required this.nombre});

  factory CounterState.initial() {
    return CounterState(counter: 0, nombre: '');
  }

  CounterState copyWith({
    int? counter,
    String? nombre,
  }) {
    return CounterState(
      counter: counter ?? this.counter,
      nombre: nombre ?? this.nombre,
    );
  }
}
