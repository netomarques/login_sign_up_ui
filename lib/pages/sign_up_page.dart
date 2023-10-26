import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:login_sign_up_ui/widgets/widgets.dart';

class SignUpPage extends StatelessWidget {
  static SignUpPage builder(BuildContext context, GoRouterState state) =>
      const SignUpPage();

  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            right: 90.0,
            top: 100.0,
            child: CustomCircle(
              color: Colors.pink.shade100,
            ),
          ),
          Positioned(
            left: 90.0,
            bottom: 100.0,
            child: CustomCircle(
              color: Colors.pink.shade100,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 40.0),
                const CustomBackButton(),
                const SizedBox(
                  height: 50.0,
                ),
                const Text(
                  'Create Account',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 100.0),
                const TextFieldTitle(title: 'Enter Your Email'),
                const TextField(),
                const SizedBox(height: 40.0),
                const TextFieldTitle(title: 'Create Username'),
                const TextField(),
                const SizedBox(height: 40.0),
                const TextFieldTitle(title: 'Create Password'),
                const TextField(),
                const SizedBox(height: 50.0),
                Center(
                  child: CustomButton(text: 'SIGNUP', width: size.width * 0.7),
                ),
                const SizedBox(height: 30.0),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
