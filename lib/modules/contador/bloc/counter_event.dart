part of 'counter_bloc.dart';

abstract class CounterEvent {}

class IncrementCounterEvent extends CounterEvent {
  final int incrementNum;

  IncrementCounterEvent({required this.incrementNum});
}

class DecrementCounterEvent extends CounterEvent {
  final int decrementNum;

  DecrementCounterEvent({required this.decrementNum});
}

class ChangeNameEvent extends CounterEvent {
  final String name;

  ChangeNameEvent({required this.name});
}

class ChangeStateFormEvent extends CounterEvent {
  final FormState formState;

  ChangeStateFormEvent({required this.formState});
}
