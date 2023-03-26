import 'package:flutter/material.dart';
import 'package:image_stack/image_stack.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            "Mobile App Design",
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 5),
          const Text(
            "Mike and Anita",
            style: TextStyle(
                color: Colors.white, fontSize: 12, fontWeight: FontWeight.w100),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ImageStack(
                imageList: const ["assets/user2.jpg", "assets/user3.jpg"],
                imageSource: ImageSource.Asset,
                totalCount: 2,
                imageRadius: 35,
                imageCount: 3,
                imageBorderWidth: 0,
              ),
              const Text("Now",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w300))
            ],
          )
        ],
      ),
    );
  }
}
