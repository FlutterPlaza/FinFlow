import 'package:flutter/material.dart';

class ValueInjector<T> extends InheritedWidget {
  final T value;

  ValueInjector({
    Key? key,
    required this.value,
    required Widget child,
  }) : super(key: key, child: child);

  static ValueInjector<T>? of<T>(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ValueInjector<T>>();
  }

  @override
  bool updateShouldNotify(ValueInjector oldWidget) {
    return value != oldWidget.value;
  }
}
