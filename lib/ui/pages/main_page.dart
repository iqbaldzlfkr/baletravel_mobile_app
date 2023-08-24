import 'package:bale_travel/cubit/page_cubit.dart';
import 'package:bale_travel/shared/theme.dart';
import 'package:bale_travel/ui/pages/home_page.dart';
import 'package:bale_travel/ui/pages/setting_page.dart';
import 'package:bale_travel/ui/pages/transaction_page.dart';
import 'package:bale_travel/ui/pages/wallet_page.dart';
import 'package:bale_travel/ui/widgets/custom_bottom_navigation_item.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});
  
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
              index: 0,
              imageUrl: 'assets/icon_home.png',
            ),
            CustomBottomNavigationItem(
              index: 1,
              imageUrl: 'assets/icon_booking.png',
            ),
            CustomBottomNavigationItem(
              index: 2,
              imageUrl: 'assets/icon_card.png',
            ),
            CustomBottomNavigationItem(
              index: 3,
              imageUrl: 'assets/icon_settings.png',
            ),
          ],
        ),
      ),
    );
  }

  Widget buildContent(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return HomePage();
      case 1:
        return TransactionPage();
      case 2:
        return WalletPage();
      case 3:
        return SettingPage();
      default:
        return HomePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          backgroundColor: backgroundColor,
          body: Stack(
            children: [
              buildContent(currentIndex),
              bottomNavigationBar(),
            ],
          ),
        );
      },
    );
  }
}
