import 'package:flutter/material.dart';

class CustomButton2 extends StatefulWidget {
  final double width;
  final double height;
  final String text;
  final double textSize;
  final Color backgroundColor;
  final Color textColor;
  final Function onTap;

  CustomButton2({
    required this.width,
    required this.height,
    required this.text,
    required this.textSize,
    required this.backgroundColor,
    required this.textColor,
    required this.onTap,
  });

  @override
  _CustomButtonState2 createState() => _CustomButtonState2();
}

class _CustomButtonState2 extends State<CustomButton2> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          _isPressed = true;
        });
      },
      onTapUp: (_) {
        setState(() {
          _isPressed = false;
        });
        widget.onTap();
      },
      onTapCancel: () {
        setState(() {
          _isPressed = false;
        });
      },
      child: Container(
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
          color: _isPressed ? widget.textColor : widget.backgroundColor,
          borderRadius: BorderRadius.circular(0.0),
        ),
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(
              fontSize: widget.textSize,
              color: _isPressed ? widget.backgroundColor : widget.textColor,
            ),
          ),
        ),
      ),
    );
  }
}
