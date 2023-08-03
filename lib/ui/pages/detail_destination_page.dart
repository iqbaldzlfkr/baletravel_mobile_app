import 'package:bale_travel/shared/theme.dart';
import 'package:flutter/material.dart';

class DetailDestinationPage extends StatelessWidget {
  const DetailDestinationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: [
          backgroundImage(),
          customShadow(),
          content(),
        ],
      ),
    );
  }
}

Widget backgroundImage() {
  return Container(
    width: double.infinity,
    height: 450,
    decoration: BoxDecoration(
      image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage(
          'assets/image_destination1.png',
        ),
      ),
    ),
  );
}

Widget customShadow() {
  return Container(
    width: double.infinity,
    height: 214,
    margin: const EdgeInsets.only(
      top: 236,
    ),
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          whiteColor.withOpacity(0),
          Colors.black.withOpacity(0.95),
        ],
      ),
    ),
  );
}

Widget content() {
  return Container(
    width: double.infinity,
    margin: const EdgeInsets.symmetric(
      horizontal: 24,
    ),
    child: Column(
      children: [
        Container(
          width: 188,
          height: 24,
          margin: const EdgeInsets.only(
            top: 30,
            left: 24,
            right: 24,
          ),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/icon_emblem.png',
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            top: 256,
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Lake Ciliwung',
                      style: whiteTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: semiBold,
                      ),
                    ),
                    Text(
                      'Tangerang',
                      style: whiteTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: light,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 20,
                    width: 20,
                    margin: const EdgeInsets.only(
                      right: 2,
                    ),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/icon_star.png',
                        ),
                      ),
                    ),
                  ),
                  Text(
                    '4.5',
                    style: whiteTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
