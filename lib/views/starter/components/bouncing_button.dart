import 'package:flutter/material.dart';
import 'package:land_of_dreams/data/constants.dart';

class CustomBouncingButton extends StatefulWidget {
  final String text;
  final VoidCallback onTap;
  const CustomBouncingButton(
      {super.key, required this.text, required this.onTap});

  @override
  State<CustomBouncingButton> createState() => _CustomBouncingButtonState();
}

class _CustomBouncingButtonState extends State<CustomBouncingButton>
    with SingleTickerProviderStateMixin {
  double _scale = 0;
  late AnimationController _controller;
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _scale = 1 - _controller.value;
    return GestureDetector(
        onTapDown: _tapDown,
        onTapUp: _tapUp,
        onTap: widget.onTap,
        child: Transform.scale(
            scale: _scale,
            child: Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.0),
                color: CustomColors.kBlue,
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x80000000),
                    blurRadius: 12.0,
                    offset: Offset(0.0, 5.0),
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  widget.text,
                  style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            )));
  }

  void _tapDown(TapDownDetails details) {
    _controller.forward();
  }

  void _tapUp(TapUpDetails details) {
    _controller.reverse();
  }
}
