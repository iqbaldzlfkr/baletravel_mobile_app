import 'package:bale_travel/shared/theme.dart';
import 'package:bale_travel/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';

class SuccessCheckoutPage extends StatelessWidget {
  const SuccessCheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 300,
            height: 150,
            margin: const EdgeInsets.only(
              bottom: 80,
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/image_success.png',
                ),
              ),
            ),
          ),
          Text(
            'Well Booked 😍',
            style: blackTextStyle.copyWith(
              fontSize: 32,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Are you ready to explore the new\nworld of experiences?',
            textAlign: TextAlign.center,
            style: greyTextStyle.copyWith(
              fontSize: 16,
              fontWeight: light,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          CustomFilledButton(
            title: 'My Bookings',
            width: 220,
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/main', (route) => false);
            },
          )
        ],
      )),
    );
  }
}
