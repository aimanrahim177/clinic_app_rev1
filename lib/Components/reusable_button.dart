import 'package:flutter/material.dart';

class ReusableButton extends StatelessWidget {
  const ReusableButton(
      {Key? key,
      this.boxColor,
      this.textColor,
      this.width,
      this.height,
      this.title,
      this.onTap})
      : super(key: key);

  final Color? boxColor, textColor;

  final double? width, height;
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
            Text(
              '$title',
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: textColor, fontSize: 18),
            )
          ]),
        ),
      ),
    );
  }
}
