import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState.initial());

  void increment({required int incrementNum}) {
    int newValue = incrementNum;

    emit(state.copyWith(formState: FormState.loading));
    newValue++;
    print(newValue);
    emit(state.copyWith(formState: FormState.success));
    final newState = state.copyWith(counter: newValue);
    emit(newState);
  }

  void decrement({required int decrementNum}) {
    int newValue = decrementNum;
    newValue--;
    print(newValue);
    final newState = state.copyWith(counter: newValue);
    emit(newState);
  }
}
