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
    'assets/image_destination5.png',
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
              Container(
                margin: const EdgeInsets.only(top: 150, right: 20),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Column(
                    children: List.generate(3, (indexDots){
                      return Container(
                        width: 8,
                        height: index == indexDots? 25 : 8,
                        margin: const EdgeInsets.only(bottom: 2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: index == indexDots? primaryColor : primaryColor.withOpacity(0.3),
                        ),
                      );
                    }),
                  ),
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(24),
                      child: Column(
                        children: [
                          Text(
                            title[index],
                            textAlign: TextAlign.center,
                            style: whiteTextStyle.copyWith(
                              fontSize: 32,
                              fontWeight: semiBold,
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
                        ],
                      ),
                    ),
                    if (index == 2)
                      Container(
                        margin: const EdgeInsets.only(
                          bottom: 80,
                        ),
                        child: Column(
                          children: [
                            CustomFilledButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/sign-up');
                              },
                              title: 'Get Started',
                              width: 220,
                            ),
                            const SizedBox(height: 20,),
                            CustomSignInButton(
                              title: 'Sign In',
                              onPressed: () {},
                            )
                          ],
                        ),
                      ),
                    if (index != 2)
                      const SizedBox(
                        height: 80,
                      ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
