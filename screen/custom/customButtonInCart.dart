import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final double width;
  final double height;
  final String text;
  final double textSize;
  final Color buttonColor;
  final Color textColor;
  final VoidCallback onPressed;

  CustomButton({
    required this.width,
    required this.height,
    required this.text,
    required this.textSize,
    required this.buttonColor,
    required this.textColor,
    required this.onPressed,
  });

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool _isButtonPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          _isButtonPressed = true;
        });
      },
      onTapUp: (_) {
        setState(() {
          _isButtonPressed = false;
        });
      },
      onTapCancel: () {
        setState(() {
          _isButtonPressed = false;
        });
      },
      child: Container(
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
            color: _isButtonPressed ? widget.textColor : widget.buttonColor,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 2)),
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(
              fontSize: widget.textSize,
              color: _isButtonPressed ? widget.buttonColor : widget.textColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
