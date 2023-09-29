import 'package:cubit_app/manager/counter/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FloatingButtonSection extends StatelessWidget {
  const FloatingButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: () {
            context.read<CounterCubit>().incremeamrnt();
          },
          child: const Text("+"),
        ),
        const SizedBox(
          height: 10,
        ),
        FloatingActionButton(
          onPressed: () {
            context.read<CounterCubit>().decreament();
          },
          child: const Text("-"),
        ),
      ],
    );
  }
}
