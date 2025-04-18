import 'package:flutter/material.dart';

import '../utils/extensions/text_style_extention.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Tesla Model X",
                        style: context.title,
                      ),
                      Text(
                        "150 km · Parked",
                        style: context.body,
                      ),
                    ],
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
