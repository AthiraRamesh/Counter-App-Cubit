import 'package:bloc/bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());
  void Increment() => emit(
        CounterState(counterValue: state.counterValue + 1),
      );
  void Decrement() => emit(
        CounterState(counterValue: state.counterValue - 1),
      );
}
