import 'package:bale_travel/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomFilledButton extends StatelessWidget {

  final String title;
  final double width;
  final double height;
  final VoidCallback? onPressed;

  const CustomFilledButton({
    Key? key,
    required this.title,
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
        title,
        style: whiteTextStyle.copyWith(
          fontSize: 18,
          fontWeight: medium,
          ),
        ),
      ),
    );
  }
}

class CustomTextButton extends StatelessWidget {

  final String title;
  final double width;
  final double height;
  final VoidCallback? onPressed;

  const CustomTextButton({
    Key? key,
    required this.title,
    this.width = double.infinity,
    this.height = 24,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        ),
        child: Text(
          title,
          style: greyTextStyle.copyWith(
          fontSize: 16,
          fontWeight: light,
          decoration: TextDecoration.underline,
          ),
        ),
      ),
    );
  }
}

// class CustomSignInButton extends StatelessWidget {

//   final String title;
//   final double width;
//   final double height;
//   final VoidCallback? onPressed;

//   const CustomSignInButton({
//     Key? key,
//     required this.title,
//     this.width = double.infinity,
//     this.height = 24,
//     this.onPressed,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: width,
//       height: height,
//       child: TextButton(
//         onPressed: onPressed,
//         style: TextButton.styleFrom(
//         padding: EdgeInsets.zero,
//         ),
//         child: Text(
//           title,
//           style: whiteTextStyle.copyWith(
//           fontSize: 18,
//           fontWeight: light,
//           decoration: TextDecoration.underline,
//           ),
//         ),
//       ),
//     );
//   }
// }