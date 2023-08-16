import 'package:bale_travel/cubit/auth_cubit.dart';
import 'package:bale_travel/shared/theme.dart';
import 'package:bale_travel/ui/widgets/buttons.dart';
import 'package:bale_travel/ui/widgets/forms.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});

  final TextEditingController nameController = TextEditingController(text: '');
  final TextEditingController emailController = TextEditingController(text: '');
  final TextEditingController passwordController = TextEditingController(text: '');
  final TextEditingController hobbyController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    Widget titleSection() {
      return Container(
        margin: const EdgeInsets.only(
          top: 32,
        ),
        child: Text(
          'Join us and get\nyour next journey',
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
          top: 30,
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
              title: 'Full Name',
              hintText: 'Your Full Name',
              controller: nameController,
            ),
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
            CustomFormField(
              title: 'Hobby',
              hintText: 'Your Hobby',
              controller: hobbyController,
            ),
            const SizedBox(
              height: 30,
            ),
            BlocConsumer<AuthCubit, AuthState>(
              listener: (context, state) {
                if (state is AuthSuccess) {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/bonus-page', (route) => false);
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
                  title: 'Sign Up',
                  onPressed: () {
                    context.read<AuthCubit>().signUp(
                        email: emailController.text,
                        password: passwordController.text,
                        name: nameController.text,
                        hobby: hobbyController.text);
                  },
                );
              },
            ),
          ],
        ),
      );
    }

    Widget tacSection() {
      return Container(
        margin: const EdgeInsets.only(
          top: 50,
        ),
        child: CustomTextButton(
          title: 'Terms and Conditions',
          onPressed: () {},
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
            tacSection(),
          ],
        ),
      ),
    );
  }
}
