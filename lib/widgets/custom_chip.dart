import 'package:flutter/material.dart';

class CustomChip extends StatelessWidget {
  final String label;
  const CustomChip({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Chip(
      side: BorderSide(color: Theme.of(context).colorScheme.secondaryContainer),
      label: Text(label),
      shape: RoundedRectangleBorder(
          side: BorderSide(
              color: Theme.of(context).colorScheme.secondaryContainer),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
    );
  }
}
