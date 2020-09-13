import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

import '../counter.dart';
import 'counter_view.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterCubit(),
      child: CounterView(),
    );
  }
}

// It's important to separate or decouple the creation of a Cubit from the consumption of a Cubit
// in order to have code that is much more testable and reusable.
