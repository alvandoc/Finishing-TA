import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_ta_ke_7/ui/constant/constant.dart';

// ignore: must_be_immutable
class HeaderItem extends StatefulWidget {

  String iconPath;
  String title;
  String value;
  bool useIconInfo;
  IconData icon;
  Color iconColor;

  HeaderItem({
    @required this.iconPath,
    @required this.title,
    @required this.value,
    this.useIconInfo = false,
    this.icon, this.iconColor
  });

  @override
  _HeaderItemState createState() => _HeaderItemState();
}

class _HeaderItemState extends State<HeaderItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: 38,
          height: 38,
          child: Stack(
            children: <Widget>[
              SvgPicture.asset(widget.iconPath, width: 32, height: 32, color: primaryColor),
              widget.useIconInfo ? Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26.withOpacity(0.1),
                        offset: Offset(0, 5),
                        blurRadius: 13,
                        spreadRadius: 1
                      )
                    ]
                  ),
                  child: Icon(widget.icon, color: widget.iconColor, size: 15),
                ),
              ) : SizedBox()
            ],
          ),
        ),
        Text(
          widget.title,
          style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w700),
        ),
        Text(
          widget.value,
          style: TextStyle(color: Colors.black87, fontSize: 13),
        )
      ],
    );
  }
}