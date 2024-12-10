import 'package:flutter/material.dart';

class CounterField extends StatelessWidget {
  final int value;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const CounterField({
    Key? key,
    required this.value,
    required this.onIncrement,
    required this.onDecrement,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: onDecrement,
          icon: Icon(Icons.remove),
        ),
        Text(
          value.toString(),
          style: const TextStyle(fontSize: 18),
        ),
        IconButton(
          onPressed: onIncrement,
          icon: Icon(Icons.add),
        ),
      ],
    );
  }
}
