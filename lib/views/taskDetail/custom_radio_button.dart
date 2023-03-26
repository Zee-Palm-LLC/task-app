import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:land_of_dreams/data/constants.dart';

class CustomRadioButtons extends StatefulWidget {
  const CustomRadioButtons({super.key});

  @override
  State<CustomRadioButtons> createState() => _CustomRadioButtonsState();
}

class _CustomRadioButtonsState extends State<CustomRadioButtons> {
  int groupValue = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NeumorphicRadio(
            groupValue: groupValue,
            style: const NeumorphicRadioStyle(
                boxShape: NeumorphicBoxShape.stadium()),
            value: 1,
            onChanged: (value) {
              setState(() {
                groupValue = value!;
              });
            },
            padding: EdgeInsets.zero,
            child: Container(
              height: 80,
              width: 55,
              decoration: BoxDecoration(
                  color: groupValue == 1 ? CustomColors.kBlue : Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("12",
                      style: TextStyle(
                          color: groupValue == 1 ? Colors.white : Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  Text("Wed",
                      style: TextStyle(
                          color: groupValue == 1 ? Colors.white : Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w400)),
                ],
              ),
            ),
          ),
          NeumorphicRadio(
            groupValue: groupValue,
            style: const NeumorphicRadioStyle(
                boxShape: NeumorphicBoxShape.stadium()),
            value: 2,
            onChanged: (value) {
              setState(() {
                groupValue = value!;
              });
            },
            padding: EdgeInsets.zero,
            child: Container(
              height: 80,
              width: 55,
              decoration: BoxDecoration(
                  color: groupValue == 2 ? CustomColors.kBlue : Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("13",
                      style: TextStyle(
                          color: groupValue == 2 ? Colors.white : Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  Text("Thurs",
                      style: TextStyle(
                          color: groupValue == 2 ? Colors.white : Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w400)),
                ],
              ),
            ),
          ),
          NeumorphicRadio(
            groupValue: groupValue,
            style: const NeumorphicRadioStyle(
                boxShape: NeumorphicBoxShape.stadium()),
            value: 3,
            onChanged: (value) {
              setState(() {
                groupValue = value!;
              });
            },
            padding: EdgeInsets.zero,
            child: Container(
              height: 80,
              width: 55,
              decoration: BoxDecoration(
                  color: groupValue == 3 ? CustomColors.kBlue : Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("14",
                      style: TextStyle(
                          color: groupValue == 3 ? Colors.white : Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  Text("Fri",
                      style: TextStyle(
                          color: groupValue == 3 ? Colors.white : Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w400)),
                ],
              ),
            ),
          ),
          NeumorphicRadio(
            groupValue: groupValue,
            style: const NeumorphicRadioStyle(
                boxShape: NeumorphicBoxShape.stadium()),
            value: 4,
            onChanged: (value) {
              setState(() {
                groupValue = value!;
              });
            },
            padding: EdgeInsets.zero,
            child: Container(
              height: 80,
              width: 55,
              decoration: BoxDecoration(
                  color: groupValue == 4 ? CustomColors.kBlue : Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("15",
                      style: TextStyle(
                          color: groupValue == 4 ? Colors.white : Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  Text("Sat",
                      style: TextStyle(
                          color: groupValue == 4 ? Colors.white : Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w400)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
