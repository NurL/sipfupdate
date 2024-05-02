import 'package:flutter/material.dart';
import 'package:sipfupdate/components/button.dart';
import 'package:sipfupdate/pages/register_page.dart';
import 'package:sipfupdate/utils/color_constant.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 78, left: 24, right: 24, bottom: 52),
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/onboardbg.jpg'), fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            const Text(
              'Futsal Tenang Tanpa Halangan',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Text(
              'Pesan darimanapun dan kapanpun',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            Expanded(
              child: Container(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Button(
                    title: 'Login',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const RegisterPage()),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Button(
                    title: 'Register',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const RegisterPage()),
                      );
                    },
                    color: Colors.white,
                    textColor: ColorConstant.primary,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
