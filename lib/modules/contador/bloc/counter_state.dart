part of 'counter_bloc.dart';

enum FormState {
  initial,
  loading,
  success,
  fail,
}

class CounterState {
  final int counter;
  final String nombre;
  final FormState formState;

  CounterState({
    required this.counter,
    required this.nombre,
    required this.formState,
  });

  factory CounterState.initial() {
    return CounterState(
      counter: 0,
      nombre: '',
      formState: FormState.initial,
    );
  }

  CounterState copyWith({
    int? counter,
    String? nombre,
    FormState? formState,
  }) {
    return CounterState(
      counter: counter ?? this.counter,
      nombre: nombre ?? this.nombre,
      formState: formState ?? this.formState,
    );
  }
}
