import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:image_stack/image_stack.dart';
import 'package:land_of_dreams/data/constants.dart';
import 'package:land_of_dreams/model/ongoing_tasks.dart';

import 'custom_radio_button.dart';

class TaskDetailView extends StatefulWidget {
  const TaskDetailView({super.key});

  @override
  State<TaskDetailView> createState() => _TaskDetailViewState();
}

class _TaskDetailViewState extends State<TaskDetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.kBackground,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: CustomColors.kBackground,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back, color: Colors.black)),
        actions: const [
          CircleAvatar(
            backgroundImage: AssetImage('assets/user1.jpg'),
          ),
          SizedBox(width: 10)
        ],
      ),
      body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          physics: const BouncingScrollPhysics(),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(height: 30),
            Row(
              children: const [
                Icon(Icons.arrow_back, color: Colors.black, size: 15),
                SizedBox(width: 3),
                Text("Mar"),
                Spacer(),
                Text("April",
                    style:
                        TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                Spacer(),
                Text("May"),
                SizedBox(width: 3),
                Icon(Icons.arrow_forward, color: Colors.black, size: 15)
              ],
            ),
            const SizedBox(height: 40),
            const CustomRadioButtons(),
            const SizedBox(height: 40),
            const Text("Ongoing",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  if (ongoingTaskList[index].isBooked) {
                    return SizedBox(
                      height: 130,
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                ongoingTaskList[index].startingTime,
                                style: const TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w400),
                              ),
                              Text(ongoingTaskList[index].endingTime,
                                  style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400))
                            ],
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                  color: CustomColors.kBlue,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Text(
                                    "Mobile App Design",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  const SizedBox(height: 5),
                                  const Text(
                                    "Mike and Anita",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w100),
                                  ),
                                  const SizedBox(height: 30),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      ImageStack(
                                        imageList: const [
                                          "assets/user2.jpg",
                                          "assets/user3.jpg"
                                        ],
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
                            ),
                          )
                        ],
                      ),
                    );
                  } else {
                    return SizedBox(
                      height: 40,
                      width: double.maxFinite,
                      child: Row(
                        children: [
                          Text(
                            ongoingTaskList[index].startingTime,
                            style: const TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 14),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: Colors.white),
                            child: const Icon(Icons.circle,
                                color: Colors.red, size: 14),
                          ),
                          Expanded(
                              child: Container(
                            height: 1,
                            color: Colors.red,
                          ))
                        ],
                      ),
                    );
                  }
                },
                separatorBuilder: (ctx, index) => const SizedBox(height: 10),
                itemCount: ongoingTaskList.length)
          ])),
    );
  }
}
