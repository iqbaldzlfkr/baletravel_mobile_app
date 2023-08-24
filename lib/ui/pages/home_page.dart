import 'package:bale_travel/cubit/auth_cubit.dart';
import 'package:bale_travel/cubit/destination_cubit.dart';
import 'package:bale_travel/models/destination_model.dart';
import 'package:bale_travel/shared/theme.dart';
import 'package:bale_travel/ui/widgets/custom_bottom_navigation_item.dart';
import 'package:bale_travel/ui/widgets/destination_card_item.dart';
import 'package:bale_travel/ui/widgets/destination_tile_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    context.read<DestinationCubit>().fetchDestinations();
    super.initState();
  }

  Widget header() {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        if (state is AuthSuccess) {
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
                        'Howdy,\n${state.user.name}',
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
                // Container(
                //   width: 60,
                //   height: 60,
                //   decoration: BoxDecoration(
                //     shape: BoxShape.circle,
                //     image: DecorationImage(
                //       image: AssetImage(
                //         'assets/image_profile.png',
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
          );
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }

  Widget popularDestinations(List<DestinationModel> destinations) {
    return Container(
      margin: const EdgeInsets.only(
        top: 30,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: destinations.map((DestinationModel destination){
            return DestinationCardItem(destination);
          }).toList(),
        ),
      ),
    );
  }

  Widget newDestinations(List<DestinationModel> destinations) {
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
          Column(
            children: destinations.map((DestinationModel destination){
              return DestinationTileItem(destination);
            }).toList(),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<DestinationCubit, DestinationState>(
        listener: (context, state) {
          if (state is DestinationFailed) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: redColor,
                content: Text(state.error),
              ),
            );
          }
        },
        builder: (context, state) {
          if (state is DestinationSuccess) {
            return ListView(
              children: [
                header(),
                popularDestinations(state.destinations),
                newDestinations(state.destinations),
              ],
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
