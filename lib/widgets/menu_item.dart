import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  const MenuItem(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 20, top: 12, bottom: 12),
              child: Row(
                children: [
                  SizedBox(
                    width: 36,
                    height: 36,
                    child: Image.asset(imageUrl),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Theme.of(context).colorScheme.primary)),
                      subtitle.length > 0
                          ? Text(subtitle,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color:
                                      Theme.of(context).colorScheme.secondary))
                          : SizedBox.shrink(),
                    ],
                  )
                ],
              ),
            ),
            Icon(Icons.arrow_forward)
          ],
        ));
  }
}
