class CounterEvent {}

class IncrementEvent extends CounterEvent {}

class IncrementEvent2 extends CounterEvent {
  int value;
  IncrementEvent2({required this.value});
}

class Decrement extends CounterEvent {}
