import 'package:flutter/material.dart';
import 'package:login_sign_up_ui/pages/pages.dart';
import 'package:login_sign_up_ui/utils/utils.dart';
import 'package:login_sign_up_ui/widgets/widgets.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            right: 90.0,
            top: -20.0,
            child: CustomCircle(color: kDarkPurple),
          ),
          Positioned(
            left: 90.0,
            top: 220.0,
            child: CustomCircle(color: kLightPurple),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Let's Get Started",
                  style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const Text(
                  'Grow Together',
                  style: TextStyle(fontSize: 18.0),
                ),
                const SizedBox(height: 40.0),
                Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) => const LoginPage(),
                        ),
                      );
                    },
                    child: CustomButton(
                      width: size.width * 0.8,
                      text: 'JOIN NOW',
                    ),
                  ),
                ),
                const SizedBox(height: 40.0),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
