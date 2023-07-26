import 'package:bale_travel/shared/theme.dart';
import 'package:bale_travel/ui/widgets/custom_bottom_navigation_item.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: [
          bottomNavigationBar(),
        ],
      ),
    );
  }
}

Widget bottomNavigationBar() {
  return Align(
    alignment: Alignment.bottomCenter,
    child: Container(
      width: double.infinity,
      height: 60,
      margin: const EdgeInsets.only(
        bottom: 30,
        left: 24,
        right: 24,
      ),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomBottomNavigationItem(
            imageUrl: 'assets/icon_home.png',
            isSelected: true,
          ),
          CustomBottomNavigationItem(
            imageUrl: 'assets/icon_booking.png',
          ),
          CustomBottomNavigationItem(
            imageUrl: 'assets/icon_card.png',
          ),
          CustomBottomNavigationItem(
            imageUrl: 'assets/icon_settings.png',
          ),
        ],
      ),
    ),
  );
}
