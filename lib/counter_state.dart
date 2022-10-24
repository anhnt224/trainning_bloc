class CounterState {}

class LoadingState extends CounterState {}

class SuccessState extends CounterState {
  int value;

  SuccessState({required this.value});
}
