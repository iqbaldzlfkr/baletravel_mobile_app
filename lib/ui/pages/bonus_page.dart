import 'package:bale_travel/cubit/auth_cubit.dart';
import 'package:bale_travel/shared/theme.dart';
import 'package:bale_travel/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BonusPage extends StatelessWidget {
  Widget cardSection() {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        if (state is AuthSuccess) {
          return Container(
            width: 300,
            height: 211,
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(17),
              image: const DecorationImage(
                image: AssetImage(
                  'assets/image_card.png',
                ),
              ),
              boxShadow: [
                BoxShadow(
                  color: primaryColor.withOpacity(0.5),
                  blurRadius: 50,
                  offset: const Offset(0, 8),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Name',
                            style: whiteTextStyle.copyWith(
                              fontWeight: light,
                            ),
                          ),
                          Text(
                            state.user.name,
                            style: whiteTextStyle.copyWith(
                              fontSize: 20,
                              fontWeight: medium,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 24,
                      height: 24,
                      margin: const EdgeInsets.only(
                        right: 6,
                      ),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/icon_plane.png',
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'pay',
                      style: whiteTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Text(
                  'Balance',
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
                Text(
                  'IDR ${state.user.balance}',
                  style: whiteTextStyle.copyWith(
                    fontSize: 26,
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
          );
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }

  Widget titleSection() {
    return Container(
      margin: const EdgeInsets.only(
        top: 80,
        left: 62,
        right: 62,
      ),
      child: Column(
        children: [
          Text(
            'Big Bonus 🎉',
            style: blackTextStyle.copyWith(
              fontSize: 32,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            'We give you early credit so that you can buy a flight ticket',
            style: greyTextStyle.copyWith(
              fontSize: 16,
              fontWeight: light,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget startButton(context) {
    return Container(
      width: 220,
      height: 55,
      margin: const EdgeInsets.only(
        top: 50,
      ),
      child: CustomFilledButton(
        title: 'Start Fly Now',
        onPressed: () {
          Navigator.pushNamedAndRemoveUntil(context, '/main', (route) => false);
        },
      ),
    );
  }

  const BonusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            cardSection(),
            titleSection(),
            startButton(context),
          ],
        ),
      ),
    );
  }
}
