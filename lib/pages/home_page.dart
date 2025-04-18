import 'package:d4_8_7/utils/extensions/color_extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
                        style: context.title.copyWith(
                          color: Colors.red,
                        ),
                      ),
                      Text(
                        "150 km · Parked",
                        style: context.body,
                      ),
                    ],
                  ),
                  Spacer(),
                  CupertinoButton(
                    borderRadius: BorderRadius.circular(100),
                    padding: EdgeInsets.all(15),
                    onPressed: () {
                      Get.closeAllSnackbars();
                      Get.snackbar(
                        "Test",
                        "Test Body",
                        snackPosition: SnackPosition.BOTTOM,
                      );
                    },
                    color: context.cardColor,
                    child: Icon(Icons.person),
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
