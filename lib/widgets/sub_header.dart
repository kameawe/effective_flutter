import 'package:flutter/material.dart';

class SubHeader extends StatelessWidget {
  final String title;
  final String subtitle;
  const SubHeader({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: Theme.of(context).colorScheme.primary)),
        const SizedBox(
          height: 8,
        ),
        Text(subtitle,
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: Theme.of(context).colorScheme.secondary))
      ],
    );
  }
}
