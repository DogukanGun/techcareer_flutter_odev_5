
import 'package:flutter/material.dart';
typedef StringToVoidFunc = void Function(String);

class CustomButton extends StatelessWidget {
  final StringToVoidFunc onTap;
  String text;
  Color buttonColor;
  double buttonWidth=1.0;

  CustomButton({required this.onTap,required this.text,required this.buttonColor,required this.buttonWidth});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70 * buttonWidth,
      child: ElevatedButton(
          onPressed: (){ onTap(text); },
          style: ElevatedButton.styleFrom(
            primary:buttonColor,
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)))
          ),
          child: Text(text),
      ),
    );
  }
}
