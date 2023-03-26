import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:land_of_dreams/views/home/home_view.dart';

import 'components/bouncing_button.dart';
import 'components/fade_in_text.dart';

class StarterView extends StatelessWidget {
  const StarterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 40),
            Center(
              child: Container(
                height: 320,
                width: 240,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(200),
                        bottomRight: Radius.circular(200)),
                    image: DecorationImage(
                        image: AssetImage('assets/shade.jpg'),
                        fit: BoxFit.cover)),
              ),
            ),
            const Spacer(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: CustomAnimatedText(
                seconds: 1,
                text: 'Manage your Daily Tasks',
                fontColor: Colors.black,
                fontSize: 44,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: CustomAnimatedText(
                seconds: 2,
                text:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore',
                fontColor: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w300,
              ),
            ),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: CustomBouncingButton(
                onTap: () {
                  Get.to(() => HomeView());
                },
                text: 'Get Started',
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
