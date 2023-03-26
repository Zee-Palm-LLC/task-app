import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:land_of_dreams/data/constants.dart';
import 'package:land_of_dreams/model/task_progress.dart';
import 'package:land_of_dreams/views/starter/components/fade_in_text.dart';

import '../taskDetail/task_detail_view.dart';
import 'task_card.dart';

class HomeView extends StatefulWidget {
  HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.kBlue,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.graphic_eq, color: Colors.white)),
        actions: const [
          CircleAvatar(
            backgroundImage: AssetImage('assets/user1.jpg'),
          ),
          SizedBox(width: 10)
        ],
      ),
      body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: AnimationLimiter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: AnimationConfiguration.toStaggeredList(
                duration: const Duration(milliseconds: 375),
                childAnimationBuilder: (widget) => SlideAnimation(
                  horizontalOffset: MediaQuery.of(context).size.width / 2,
                  child: FadeInAnimation(child: widget),
                ),
                children: [
                  const CustomAnimatedText(
                    text: 'Hi Michael',
                    fontColor: Colors.white,
                    fontSize: 34,
                    fontWeight: FontWeight.w600,
                    seconds: 1,
                  ),
                  const Text(
                    "6 Tasks are pending",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w300),
                  ),
                  const SizedBox(height: 40),
                  CarouselSlider(
                    options: CarouselOptions(
                        height: 136,
                        viewportFraction: 1,
                        autoPlay: true,
                        pauseAutoPlayOnTouch: true,
                        scrollPhysics: const BouncingScrollPhysics(),
                        enableInfiniteScroll: false,
                        autoPlayAnimationDuration: const Duration(seconds: 1)),
                    items: [1, 2, 3, 4, 5].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return const TaskCard();
                        },
                      );
                    }).toList(),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Monthly Review",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      InkWell(
                        onTap: (){
                          Get.to(()=>TaskDetailView());
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                              color: CustomColors.kTeal,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x80000000),
                                  blurRadius: 12.0,
                                  offset: Offset(0.0, 5.0),
                                ),
                              ]),
                          child:
                              const Icon(Icons.credit_card, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  StaggeredGridView.countBuilder(
                    crossAxisCount: 4,
                    itemCount: taskProgressList.length,
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) => Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      color: Colors.white.withOpacity(0.1),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                              taskProgressList[index].status.toInt().toString(),
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold)),
                          Text(taskProgressList[index].title,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300)),
                        ],
                      ),
                    ),
                    staggeredTileBuilder: (int index) =>
                        StaggeredTile.count(2, index.isEven ? 2.5 : 1.7),
                    mainAxisSpacing: 4.0,
                    crossAxisSpacing: 4.0,
                  ),
                ],
              ),
            ),
          )),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(canvasColor: CustomColors.kBlue),
        child: BottomNavigationBar(
          elevation: 0,
          showSelectedLabels: false,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.file_open),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '',
            ),
          ],
          currentIndex: selectedIndex,
          selectedItemColor: Colors.white,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
