import 'package:flutter/material.dart';

class ReusableButtonIcon extends StatelessWidget {
  const ReusableButtonIcon(
      {Key? key,
      this.iconColor,
      this.boxColor,
      this.textColor,
      this.icon,
      this.width,
      this.height,
      this.title,
      this.iconSize,
      this.onTap})
      : super(key: key);

  final Color? iconColor, boxColor, textColor;
  final IconData? icon;
  final double? width, height, iconSize;
  final String? title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: boxColor,
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: InkWell(
        onTap: onTap,
        child: SizedBox(
          width: width,
          height: height,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(
              icon,
              color: iconColor,
              size: iconSize,
            ),
            Text(
              '$title',
              style: TextStyle(fontWeight: FontWeight.bold, color: textColor),
            )
          ]),
        ),
      ),
    );
  }
}
