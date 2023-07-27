import 'package:bale_travel/shared/theme.dart';
import 'package:flutter/material.dart';

class DestinationCardItem extends StatelessWidget {
  final String name;
  final String city;
  final String imageUrl;
  final double rating;

  const DestinationCardItem({
    super.key,
    required this.name,
    required this.city,
    required this.imageUrl,
    this.rating = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 323,
      margin: const EdgeInsets.only(
        left: 24,
      ),
      padding: const EdgeInsets.all(
        10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: whiteColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 180,
            height: 220,
            margin: const EdgeInsets.only(
              bottom: 20,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              image: DecorationImage(
                image: AssetImage(
                  imageUrl,
                ),
              ),
            ),
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 55,
                height: 30,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(18),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      margin: const EdgeInsets.only(
                        right: 2,
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/icon_star.png',
                          ),
                        ),
                      ),
                    ),
                    Text(
                      rating.toString(),
                      style: blackTextStyle.copyWith(
                        fontWeight: medium,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              left: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  city,
                  style: greyTextStyle.copyWith(
                    fontWeight: light,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
