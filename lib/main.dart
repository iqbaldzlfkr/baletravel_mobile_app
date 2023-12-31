import 'package:bale_travel/cubit/auth_cubit.dart';
import 'package:bale_travel/cubit/destination_cubit.dart';
import 'package:bale_travel/cubit/page_cubit.dart';
import 'package:bale_travel/cubit/seat_cubit.dart';
import 'package:bale_travel/cubit/transaction_cubit.dart';
import 'package:bale_travel/ui/pages/bonus_page.dart';
import 'package:bale_travel/ui/pages/get_started_page.dart';
import 'package:bale_travel/ui/pages/home_page.dart';
import 'package:bale_travel/ui/pages/main_page.dart';
import 'package:bale_travel/ui/pages/sign_in_page.dart';
import 'package:bale_travel/ui/pages/sign_up_page.dart';
import 'package:bale_travel/ui/pages/splash_page.dart';
import 'package:bale_travel/ui/pages/success_checkout_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PageCubit(),
        ),
        BlocProvider(
          create: (context) => AuthCubit(),
        ),
        BlocProvider(
          create: (context) => DestinationCubit(),
        ),
         BlocProvider(
          create: (context) => SeatCubit(),
        ),
         BlocProvider(
          create: (context) => TransactionCubit(),
        ),
        
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const SplashPage(),
          '/get-started': (context) => const GetStartedPage(),
          '/sign-up': (context) => SignUpPage(),
          '/sign-in': (context) => SignInPage(),
          '/bonus-page': (context) => const BonusPage(),
          '/home': (context) => const HomePage(),
          '/main': (context) => const MainPage(),
          '/success-checkout': (context) => const SuccessCheckoutPage(),
        },
      ),
    );
  }
}
