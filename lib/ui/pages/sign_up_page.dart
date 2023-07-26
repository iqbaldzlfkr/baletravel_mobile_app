import 'package:bale_travel/shared/theme.dart';
import 'package:bale_travel/ui/widgets/buttons.dart';
import 'package:bale_travel/ui/widgets/forms.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          children: [
            title(),
            inputSection(),
            tacSection(),
          ],
        ),
      ),
    );
  }
}

Widget title() {
  return Container(
    margin: const EdgeInsets.only(
      top: 32,
    ),
    child: Text(
      'Join us and get\nyour next journey',
      style: blackTextStyle.copyWith(
        fontSize: 24,
        fontWeight: semiBold,
      ),
    ),
  );
}

Widget inputSection() {
  return Container(
    margin: const EdgeInsets.only(
      top: 30,
    ),
    padding: const EdgeInsets.symmetric(
      vertical: 30,
      horizontal: 24,
    ),
    decoration: BoxDecoration(
      color: whiteColor,
      borderRadius: BorderRadius.circular(17),
    ),
    child: Column(
      children: [
        CustomFormField(
          title: 'Full Name',
          hintText: 'Your Full Name',
        ),
        CustomFormField(
          title: 'Email Address',
          hintText: 'Your Email Address',
        ),
        CustomFormField(
          title: 'Password',
          hintText: 'Your Password',
          obscureText: true,
        ),
        CustomFormField(
          title: 'Hobby',
          hintText: 'Your Hobby',
        ),
        SizedBox(
          height: 30,
        ),
        CustomFilledButton(
          tittle: 'Get Started',
          onPressed: () {},
        ),
      ],
    ),
  );
}

Widget tacSection() {
  return Container(
    margin: EdgeInsets.only(
      top: 50,
    ),
    child: CustomTextButton(
      tittle: 'Terms and Conditions',
      onPressed: () {},
    ),
  );
}
