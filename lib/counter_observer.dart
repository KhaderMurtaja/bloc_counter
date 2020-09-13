import 'package:bloc/bloc.dart';

class CounterObserver extends BlocObserver {
  @override
  void onChange(Cubit cubit, Change change) {
    print('${cubit.runtimeType} $change');
    super.onChange(cubit, change);
  }
}

// In this case, we're only overriding onChange to see all state changes that occur.
