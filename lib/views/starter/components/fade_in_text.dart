import 'package:flutter/material.dart';

class CustomAnimatedText extends StatefulWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color fontColor;
  final int seconds;
  const CustomAnimatedText(
      {super.key,
      required this.seconds,
      required this.text,
      required this.fontSize,
      required this.fontWeight,
      required this.fontColor});

  @override
  State<CustomAnimatedText> createState() => _CustomAnimatedTextState();
}

class _CustomAnimatedTextState extends State<CustomAnimatedText> {
  double opacity = 1.0;

  @override
  void initState() {
    super.initState();
    changeOpacity();
  }

  changeOpacity() {
    Future.delayed(Duration(seconds: widget.seconds), () {
      setState(() {
        opacity = opacity == 0.0 ? 1.0 : 0.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
        opacity: opacity == 1 ? 0 : 1,
        duration: const Duration(seconds: 1),
        child: Text(
          widget.text,
          style: TextStyle(
              color: widget.fontColor,
              fontSize: widget.fontSize,
              fontWeight: widget.fontWeight),
        ));
  }
}
