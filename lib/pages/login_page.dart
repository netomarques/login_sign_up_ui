import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:login_sign_up_ui/router/router.dart';
import 'package:login_sign_up_ui/utils/utils.dart';
import 'package:login_sign_up_ui/widgets/widgets.dart';

class LoginPage extends StatelessWidget {
  static LoginPage builder(BuildContext context, GoRouterState state) =>
      const LoginPage();
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        child: Stack(
          children: [
            Positioned(
              right: 90.0,
              top: 250.0,
              child: CustomCircle(
                color: kBlue,
              ),
            ),
            Positioned(
              left: 90.0,
              bottom: -20.0,
              child: CustomCircle(
                color: kBlue,
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 40.0),
                    const CustomBackButton(),
                    const SizedBox(height: 50.0),
                    const Text(
                      'Welcome Back!',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      'Enter Your Username & Password',
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(height: 100.0),
                    const TextFieldTitle(title: 'Username'),
                    const TextField(),
                    const SizedBox(height: 40.0),
                    const TextFieldTitle(title: 'Password'),
                    const TextField(),
                    const SizedBox(height: 50.0),
                    Center(
                      child:
                          CustomButton(text: 'Login', width: size.width * 0.7),
                    ),
                    const SizedBox(height: 30.0),
                    const Center(
                      child: Text(
                        'Forgotten Password?',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Center(
                      child: TextButton(
                        onPressed: () => context.push(RouteLocation.signUp),
                        child: const Text(
                          'Create New Account',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
