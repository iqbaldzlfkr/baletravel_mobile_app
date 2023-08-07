import 'package:bale_travel/shared/theme.dart';
import 'package:bale_travel/ui/widgets/seat_item.dart';
import 'package:flutter/material.dart';

class ChooseSeatPage extends StatelessWidget {
  const ChooseSeatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          title(),
          seatStatus(),
          selectSeat(),
        ],
      ),
    );
  }
}

Widget title() {
  return Container(
    margin: const EdgeInsets.only(
      top: 50,
    ),
    child: Text(
      'Select Your\nFavorite Seat',
      style: blackTextStyle.copyWith(
        fontSize: 24,
        fontWeight: semiBold,
      ),
    ),
  );
}

Widget seatStatus() {
  return Container(
    margin: const EdgeInsets.only(
      top: 30,
    ),
    child: Row(
      children: [
        Container(
          height: 16,
          width: 16,
          margin: const EdgeInsets.only(
            right: 6,
          ),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/icon_available.png',
              ),
            ),
          ),
        ),
        Text(
          'Available',
          style: blackTextStyle,
        ),
        Container(
          height: 16,
          width: 16,
          margin: const EdgeInsets.only(
            right: 6,
            left: 10,
          ),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/icon_selected.png',
              ),
            ),
          ),
        ),
        Text(
          'Selected',
          style: blackTextStyle,
        ),
        Container(
          height: 16,
          width: 16,
          margin: const EdgeInsets.only(
            right: 6,
            left: 10,
          ),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/icon_unavailable.png',
              ),
            ),
          ),
        ),
        Text(
          'Unavailable',
          style: blackTextStyle,
        ),
      ],
    ),
  );
}

Widget selectSeat() {
  return Container(
    width: double.infinity,
    margin: const EdgeInsets.only(
      top: 30,
    ),
    padding: const EdgeInsets.symmetric(
      horizontal: 22,
      vertical: 30,
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(18),
      color: whiteColor,
    ),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: 48,
              height: 48,
              child: Center(
                child: Text(
                  'A',
                  style: greyTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 48,
              height: 48,
              child: Center(
                child: Text(
                  'B',
                  style: greyTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 48,
              height: 48,
              child: Center(
                child: Text(
                  '',
                  style: greyTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 48,
              height: 48,
              child: Center(
                child: Text(
                  'C',
                  style: greyTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 48,
              height: 48,
              child: Center(
                child: Text(
                  'D',
                  style: greyTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(
            top: 16,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SeatItem(status: 2,),
              SeatItem(status: 2,),
              SizedBox(
                width: 48,
                height: 48,
                child: Center(
                  child: Text(
                    '1',
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              SeatItem(status: 0,),
              SeatItem(status: 2,),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            top: 16,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SeatItem(status: 0,),
              SeatItem(status: 0,),
              SizedBox(
                width: 48,
                height: 48,
                child: Center(
                  child: Text(
                    '2',
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              SeatItem(status: 0,),
              SeatItem(status: 2,),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            top: 16,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SeatItem(status: 1,),
              SeatItem(status: 1,),
              SizedBox(
                width: 48,
                height: 48,
                child: Center(
                  child: Text(
                    '3',
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              SeatItem(status: 0,),
              SeatItem(status: 0,),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            top: 16,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SeatItem(status: 0,),
              SeatItem(status: 2,),
              SizedBox(
                width: 48,
                height: 48,
                child: Center(
                  child: Text(
                    '4',
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              SeatItem(status: 0,),
              SeatItem(status: 0,),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            top: 16,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SeatItem(status: 0,),
              SeatItem(status: 0,),
              SizedBox(
                width: 48,
                height: 48,
                child: Center(
                  child: Text(
                    '1',
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              SeatItem(status: 2,),
              SeatItem(status: 0,),
            ],
          ),
        ),
      ],
    ),
  );
}
