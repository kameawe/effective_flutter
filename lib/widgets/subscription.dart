import 'package:flutter/material.dart';

class Subscription extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String caption;
  const Subscription(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.subtitle,
      required this.caption});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 216,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                  color: Color.fromRGBO(79, 79, 108, 0.07),
                  blurRadius: 14,
                  offset: Offset(0, 8),
                  spreadRadius: 0),
              BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.08),
                  blurRadius: 10,
                  offset: Offset(0, 2),
                  spreadRadius: 0),
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(100)),
                  width: 36,
                  height: 36,
                  child: Image.asset(
                    imageUrl,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                    child: Text(
                  title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Theme.of(context).colorScheme.primary),
                ))
              ],
            ),
            SizedBox(height: 22),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  subtitle,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Theme.of(context).colorScheme.primary),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  caption,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Theme.of(context).colorScheme.secondary),
                )
              ],
            )
          ],
        ));
  }
}
