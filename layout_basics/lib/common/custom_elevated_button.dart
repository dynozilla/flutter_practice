// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.title,
    required this.buttonColor,
    required this.textColor,
    required this.imageLocation,
    required this.onPressed,
  });

  final String title;
  final Color buttonColor;
  final String imageLocation;
  final Color textColor;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    final theImage = Image(
      image: ResizeImage(AssetImage(imageLocation), height: 25, width: 25),
    );

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        elevation: 10.0,
        padding: EdgeInsets.all(16.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
      ),
      onPressed: () {
        onPressed();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          theImage,
          Text(
            title,
            style: TextStyle(color: textColor, fontSize: 16.0),
          ),
          theImage,
        ],
      ),
    );
  }
}
