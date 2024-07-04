/// A function that takes no arguments
abstract class Function0<O> {
  /// Invokes the function
  O call();
}

/// A function that takes 1 argument
abstract class Function1<I, O> {
  /// Invokes the function
  O call(I i);
}

/// A function that takes 2 arguments
abstract class Function2<I1, I2, O> {
  /// Invokes the function
  O call(I1 i1, I2 i2);
}

/// A function that takes 3 arguments
abstract class Function3<I1, I2, I3, O> {
  /// Invokes the function
  O call(I1 i1, I2 i2, I3 i3);
}

/// A function that takes 4 arguments
abstract class Function4<I1, I2, I3, I4, O> {
  /// Invokes the function
  O call(I1 i1, I2 i2, I3 i3, I4 i4);
}

/// A function that takes 5 arguments
abstract class Function5<I1, I2, I3, I4, I5, O> {
  /// Invokes the function
  O call(I1 i1, I2 i2, I3 i3, I4 i4, I5 i5);
}

/// A function that takes 6 arguments
abstract class Function6<I1, I2, I3, I4, I5, I6, O> {
  /// Invokes the function
  O call(I1 i1, I2 i2, I3 i3, I4 i4, I5 i5, I6 i6);
}

/// A function that takes 7 arguments
abstract class Function7<I1, I2, I3, I4, I5, I6, I7, O> {
  /// Invokes the function
  O call(I1 i1, I2 i2, I3 i3, I4 i4, I5 i5, I6 i6, I7 i7);
}

/// A function that takes 8 arguments
abstract class Function8<I1, I2, I3, I4, I5, I6, I7, I8, O> {
  /// Invokes the function
  O call(I1 i1, I2 i2, I3 i3, I4 i4, I5 i5, I6 i6, I7 i7, I8 i8);
}

/// A function that takes 9 arguments
abstract class Function9<I1, I2, I3, I4, I5, I6, I7, I8, I9, O> {
  /// Invokes the function
  O call(I1 i1, I2 i2, I3 i3, I4 i4, I5 i5, I6 i6, I7 i7, I8 i8, I9 i9);
}

/// A function that takes 10 arguments
abstract class Function10<I1, I2, I3, I4, I5, I6, I7, I8, I9, I10, O> {
  /// Invokes the function
  O call(I1 i1, I2 i2, I3 i3, I4 i4, I5 i5, I6 i6, I7 i7, I8 i8, I9 i9, I10 i10);
}
