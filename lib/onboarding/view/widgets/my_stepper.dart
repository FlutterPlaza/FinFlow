import 'package:flutter/material.dart';

/// Stepper(index: p, length: q)  p >= 0 , q > 1 && p < q
/// ```dart
///     Stepper(index: 0, length: 3)
/// ```
class MyStepper extends StatelessWidget {
  const MyStepper({super.key, required this.index, required this.length})
      : assert(
          index >= 0 && length >= 2 && index < length,
          'Make sure index in domain range and we have at least 2 tap',
        );

  final int index;
  final int length;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, cts) {
        return Container(
          padding: const EdgeInsets.only(top: 10),
          child: Row(
            children: <Widget>[const Spacer()] +
                [
                  ...List.generate(length - 1, (_) => StepDot(cts: cts))
                    ..insert(index, StepBar(cts: cts))
                ] +
                <Widget>[const Spacer()],
          ),
        );
      },
    );
  }
}

class StepBar extends StatelessWidget {
  const StepBar({
    super.key,
    required this.cts,
  });
  final BoxConstraints cts;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3),
      child: SizedBox(
        child: Container(
          height: cts.maxWidth * 0.027,
          width: cts.maxWidth * 0.08,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
        ),
      ),
    );
  }
}

class StepDot extends StatelessWidget {
  const StepDot({
    super.key,
    required this.cts,
  });

  final BoxConstraints cts;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3),
      child: Container(
        height: cts.maxWidth * 0.027,
        width: cts.maxWidth * 0.027,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onSurface,
          borderRadius: const BorderRadius.all(Radius.circular(5)),
        ),
      ),
    );
  }
}
