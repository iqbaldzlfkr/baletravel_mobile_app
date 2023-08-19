import 'package:bale_travel/cubit/auth_cubit.dart';
import 'package:bale_travel/shared/theme.dart';
import 'package:bale_travel/ui/widgets/buttons.dart';
import 'package:bale_travel/ui/widgets/forms.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInPage extends StatelessWidget {
  SignInPage({super.key});

  final TextEditingController emailController = TextEditingController(text: '');
  final TextEditingController passwordController =
      TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    Widget titleSection() {
      return Container(
        margin: const EdgeInsets.only(
          top: 32,
        ),
        child: Text(
          'Sign In with your\nexisting account',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget inputSection(context) {
      return Container(
        margin: const EdgeInsets.only(
          top: 100,
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 24,
        ),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(17),
        ),
        child: Column(
          children: [
            CustomFormField(
              title: 'Email Address',
              hintText: 'Your Email Address',
              controller: emailController,
            ),
            CustomFormField(
              title: 'Password',
              hintText: 'Your Password',
              obscureText: true,
              controller: passwordController,
            ),
            const SizedBox(
              height: 30,
            ),
            BlocConsumer<AuthCubit, AuthState>(
              listener: (context, state) {
                if (state is AuthSuccess) {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/main', (route) => false);
                } else if (state is AuthFailed) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: redColor,
                      content: Text(state.error),
                    ),
                  );
                }
              },
              builder: (context, state) {
                if (state is AuthLoading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return CustomFilledButton(
                  title: 'Sign In',
                  onPressed: () {
                    context.read<AuthCubit>().signIn(
                          email: emailController.text,
                          password: passwordController.text,
                        );
                  },
                );
              },
            ),
          ],
        ),
      );
    }

    Widget signInSection() {
      return Container(
        margin: const EdgeInsets.only(
          top: 50,
        ),
        child: CustomTextButton(
          title: 'Don\'t have an account? Sign Up',
          onPressed: () {
            Navigator.pushNamed(context, '/sign-up');
          },
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          children: [
            titleSection(),
            inputSection(context),
            signInSection(),
          ],
        ),
      ),
    );
  }
}
