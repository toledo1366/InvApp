import 'package:flutter_bloc/flutter_bloc.dart';

abstract class CubitBase<State> extends Cubit<State> {
  static const _LOG_ENABLED = false;

  CubitBase(State state) : super(state) {
    if (_LOG_ENABLED) print("$this created");
  }

  @override
  Future<void> close() {
    if (_LOG_ENABLED) print("$this closed");

    return super.close();
  }
}