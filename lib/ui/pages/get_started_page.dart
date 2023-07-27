import 'package:bale_travel/shared/theme.dart';
import 'package:bale_travel/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';

class GetStartedPage extends StatefulWidget {

  const GetStartedPage({super.key});

  @override
  State<GetStartedPage> createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {
  List images = [
    'assets/image_get_started.png',
    'assets/image_destination1.png',
    'assets/image_destination2.png',
  ];

  List title = [
    'Fly Like A Bird',
    'Fly Like A Bug',
    'Travel Around The World',
  ];

  List text = [
    'Explore new world with us and let\nyourself get an amazing experiences',
    'Explore new world with us and let\nyourself set be free',
    'Travel with your lovely ones',
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: images.length,
        itemBuilder: (BuildContext context, int index) {
          return Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      images[index],
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(24),
                      child: Text(
                        title[index],
                        textAlign: TextAlign.center,
                        style: whiteTextStyle.copyWith(
                          fontSize: 32,
                          fontWeight: semiBold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      text[index],
                      style: whiteTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: light,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        top: 50,
                        bottom: 80,
                      ),
                      child: CustomFilledButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/sign-up');
                        },
                        tittle: 'Get Started',
                        width: 220,
                      ),
                    ),
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
