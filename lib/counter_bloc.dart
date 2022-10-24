import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trainning_bloc/counter_event.dart';
import 'package:trainning_bloc/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int counter = 0;
  CounterBloc() : super(LoadingState()) {
    on<IncrementEvent>(
      (event, emit) {
        counter += 1;
        emit(SuccessState(value: counter));
      },
    );

    on<IncrementEvent2>(
      (event, emit) {
        counter += event.value;
        emit(SuccessState(value: counter));
      },
    );

    on<Decrement>(
      (event, emit) {
        counter -= 1;
        emit(SuccessState(value: counter));
      },
    );
  }
}

class CounterCubit extends Cubit<CounterState> {
  int counter = 0;
  CounterCubit() : super(SuccessState(value: 0));

  void increment() {
    counter += 1;
    emit(SuccessState(value: counter));
  }

  void increment2() {
    counter += 2;
    emit(SuccessState(value: counter));
  }

  void decrement() {
    counter -= 1;
    emit(SuccessState(value: counter));
  }
}
