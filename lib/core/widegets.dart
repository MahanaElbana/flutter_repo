import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key, required this.onPressed, required this.textString})
      : super(key: key);
  final Function onPressed;
  final String textString;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(10.0),
              bottomLeft: Radius.circular(10.0))),
      height: 45,
      width: MediaQuery.of(context).size.width * 0.9,
      child: TextButton(
        onPressed: () => onPressed(),
        child: Text(
          textString,
          style: TextStyle(
              fontSize: 21.0, color: Theme.of(context).colorScheme.onPrimary),
        ),
      ),
    );
  }
}
