import 'package:bale_travel/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomFilledButton extends StatelessWidget {

  final String tittle;
  final double width;
  final double height;
  final VoidCallback? onPressed;

  const CustomFilledButton({
    Key? key,
    required this.tittle,
    this.width = double.infinity,
    this.height = 50,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: width,
      height: height,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(17),
          ),
        ),
      child: Text(
        tittle,
        style: whiteTextStyle.copyWith(
          fontSize: 18,
          fontWeight: medium,
          ),
        ),
      ),
    );
  }
}