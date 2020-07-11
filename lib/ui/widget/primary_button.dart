import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PrimaryButton extends StatefulWidget {
  String text;
  double fontSize;
  Function onPress;
  Color color;

  PrimaryButton({
    @required this.text, 
    @required this.onPress,
    this.fontSize,
    @required this.color
  });

  @override
  _PrimaryButtonState createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: widget.color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Material(
        type: MaterialType.transparency,
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(8),
          onTap: () => widget.onPress != null ? widget.onPress() : {},
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                widget.text,
                style: TextStyle(fontSize: widget.fontSize != null ? widget.fontSize : 18, color: Colors.white, fontWeight: FontWeight.w700),
              ),
            ),
          ),
        ),
      ),
    );
  }
}