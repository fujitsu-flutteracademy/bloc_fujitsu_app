import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState.initial()) {
    on<IncrementCounterEvent>((event, emit) {
      int newValue = event.incrementNum;

      emit(state.copyWith(formState: FormState.loading));
      newValue++;
      print(newValue);
      emit(state.copyWith(formState: FormState.success));
      final newState = state.copyWith(counter: newValue);
      emit(newState);
    });

    on<DecrementCounterEvent>((event, emit) {
      int newValue = event.decrementNum;
      newValue--;
      print(newValue);
      final newState = state.copyWith(counter: newValue);
      emit(newState);
    });

    on<ChangeStateFormEvent>((event, emit) {
      FormState formState = event.formState;

      final newState = state.copyWith(formState: formState);
      emit(newState);
    });
  }
}
