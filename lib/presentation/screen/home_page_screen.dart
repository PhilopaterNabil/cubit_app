import 'package:cubit_app/manager/counter/counter_cubit.dart';
import 'package:cubit_app/presentation/screen/floating_button_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePagesScreen extends StatelessWidget {
  const HomePagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("My counter cubit"),
            const SizedBox(
              height: 10,
            ),
            BlocConsumer<CounterCubit, CounterState>(
              listener: (context, state) {
                if (state is CounterValueChangedState) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(state.counter.toString()),
                    ),
                  );
                }
              },
              builder: (context, state) {
                if (state is CounterInitial) {
                  return const Text("0");
                }
                if (state is CounterValueChangedState) {
                  return Text(state.counter.toString());
                } else {
                  return const SizedBox();
                }
              },
            ),
          ],
        ),
      ),
      floatingActionButton: const FloatingButtonSection(),
    );
  }
}
