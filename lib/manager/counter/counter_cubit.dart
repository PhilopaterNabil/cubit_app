import 'package:bloc/bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());

  int counter = 0;
  void incremeamrnt() {
    counter++;
    emit(CounterValueChangedState(counter: counter));
  }

  void decreament() {
    counter--;
    emit(CounterValueChangedState(counter: counter));
  }
}
