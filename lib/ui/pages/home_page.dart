import 'package:bale_travel/shared/theme.dart';
import 'package:bale_travel/ui/widgets/custom_bottom_navigation_item.dart';
import 'package:bale_travel/ui/widgets/destination_card_item.dart';
import 'package:bale_travel/ui/widgets/destination_tile_item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: backgroundColor,
      body: ListView(
        children: [
          header(),
          popularDestinations(),
          newDestinations(),
        ],
      ),
    );
  }
}

Widget header() {
  return Container(
    margin: const EdgeInsets.only(
      left: 24,
      right: 24,
      top: 30,
    ),
    child: Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Howdy,\nKezia Anne',
                style: blackTextStyle.copyWith(
                  fontSize: 24,
                  fontWeight: semiBold,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                'Where to fly today?',
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: light,
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(
                'assets/image_profile.png',
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget popularDestinations() {
  return Container(
    margin: const EdgeInsets.only(
      top: 30,
    ),
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          DestinationCardItem(
            name: 'Lake Ciliwung',
            city: 'Tangerang',
            imageUrl: 'assets/image_destination1.png',
            rating: 4.8,
          ),
          DestinationCardItem(
            name: 'White Houses',
            city: 'Tangerang',
            imageUrl: 'assets/image_destination2.png',
            rating: 4.8,
          ),
          DestinationCardItem(
            name: 'Hill Heyo',
            city: 'Tangerang',
            imageUrl: 'assets/image_destination3.png',
            rating: 4.8,
          ),
          DestinationCardItem(
            name: 'Menarra',
            city: 'Tangerang',
            imageUrl: 'assets/image_destination4.png',
            rating: 4.8,
          ),
          DestinationCardItem(
            name: 'Payung Teduh',
            city: 'Tangerang',
            imageUrl: 'assets/image_destination5.png',
            rating: 4.8,
          ),
        ],
      ),
    ),
  );
}

Widget newDestinations() {
  return Container(
    margin: const EdgeInsets.only(
      top: 30,
      bottom: 100,
      left: 24,
      right: 24,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'New This Year',
          style: blackTextStyle.copyWith(
            fontSize: 18,
            fontWeight: semiBold,
          ),
        ),
        DestinationTileItem(
          name: 'Danau Beratan',
          city: 'Singajara',
          imageUrl: 'assets/image_destination6.png',
          rating: 4.9,
        ),
        DestinationTileItem(
          name: 'Danau Beratan',
          city: 'Singajara',
          imageUrl: 'assets/image_destination7.png',
          rating: 4.9,
        ),
        DestinationTileItem(
          name: 'Danau Beratan',
          city: 'Singajara',
          imageUrl: 'assets/image_destination8.png',
          rating: 4.9,
        ),
        DestinationTileItem(
          name: 'Danau Beratan',
          city: 'Singajara',
          imageUrl: 'assets/image_destination9.png',
          rating: 4.9,
        ),
        DestinationTileItem(
          name: 'Danau Beratan',
          city: 'Singajara',
          imageUrl: 'assets/image_destination10.png',
          rating: 4.9,
        ),
      ],
    ),
  );
}
