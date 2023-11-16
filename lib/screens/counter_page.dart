import 'package:counter_app_cubit/logic/counter/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  // int counterValue = 0;  in the case of stateful widget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter App using Cubit"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: BlocBuilder<CounterCubit, CounterState>(
              builder: (context, state) {
                return Text(
                  state.counterValue.toString(),
                  style: TextStyle(fontSize: 30),
                );
              },
            ),
            // child: Text(
            //   counterValue.toString(),  in the case of stateful widget
            //   style: TextStyle(fontSize: 30),
            // ),
          ),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => context.read<CounterCubit>().Increment(),
            // setState(() {
            //   counterValue++;    in the case of stateful widget
            // });

            child: const Icon(Icons.add),
          ),
          const SizedBox(
            height: 40,
          ),
          FloatingActionButton(
            onPressed: () => context.read<CounterCubit>().Decrement(),
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
