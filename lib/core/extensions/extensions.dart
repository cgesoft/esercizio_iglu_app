import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';

extension EitherExtension<L, R> on Either<L, R> {
  R rightOrFail() {
    return getOrElse((l) => throw Exception("Test exception"));
  }

  L leftOrFail() {
    return getLeft().getOrElse(() => throw Exception("Test exception"));
  }
}

extension BlocExtensions<T> on BlocBase<T> {
  void emitSingle(T singleState) {
    final currentState = state;
    emit(singleState);
    emit(currentState);
  }
}
