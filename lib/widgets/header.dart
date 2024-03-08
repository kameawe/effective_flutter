import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String name;
  final String imageUrl;
  const Header({super.key, required this.imageUrl, required this.name});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.close,
                      color: Theme.of(context).colorScheme.outline,
                    ),
                    Icon(Icons.exit_to_app,
                        color: Theme.of(context).colorScheme.outline)
                  ],
                ),
              ),
              Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Column(
                      children: [
                        Container(
                          width: 110,
                          height: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(38),
                          ),
                          child: Image.asset(
                            imageUrl,
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(
                          height: 36,
                        ),
                        Text(
                          name,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              decoration: TextDecoration.none,
                              color: Theme.of(context).colorScheme.primary),
                        )
                      ],
                    ),
                  )),
            ],
          ),
          SizedBox(
            height: 14,
          )
        ],
      ),
    );
  }
}
