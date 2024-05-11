import 'package:flutter/material.dart';
import 'package:sipfupdate/pages/home_page.dart';
import 'package:sipfupdate/utils/color_constant.dart';
import 'package:sipfupdate/utils/widget_constant.dart';

import '../controller/login_controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorConstant.primary,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Selamat Datang,',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                    ),
                  ),
                  Text(
                    'Member',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Silahkan Login Terlebih Dahulu',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Column(
                          children: [
                            const SizedBox(
                              width: double.infinity,
                              child: Text(
                                'Email',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            StreamBuilder(
                              stream: validation.email,
                              builder: (_, snapShot) => TextField(
                                onChanged: (val) => validation.sinkEmail.add(val),
                                decoration: WidgetConstant.input(
                                  hint: 'Email',
                                  error: snapShot.hasError ? snapShot.error.toString() : null,
                                ),
                                keyboardType: TextInputType.emailAddress,
                              ),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            const SizedBox(
                              width: double.infinity,
                              child: Text(
                                'Kata Sandi',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            StreamBuilder(
                              stream: validation.password,
                              builder: (_, snapShot) => TextField(
                                obscureText: _isObscure,
                                onChanged: (val) => validation.sinkPassword.add(val),
                                decoration: WidgetConstant.input(
                                  hint: 'Password',
                                  error: snapShot.hasError ? snapShot.error.toString() : null,
                                ).copyWith(
                                    suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() => _isObscure = !_isObscure);
                                  },
                                  icon: _isObscure
                                      ? const Icon(Icons.visibility_off)
                                      : const Icon(Icons.visibility),
                                )),
                                keyboardType: TextInputType.text,
                              ),
                            ),
                          ],
                        ),
                        StreamBuilder(
                          stream: validation.submitValid,
                          builder: (_, snapShot) => InkWell(
                            onTap: snapShot.data != true
                                ? () => {}
                                : () {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(builder: (context) => const HomePage()),
                                    );
                                  },
                            child: Container(
                              height: 45,
                              decoration: BoxDecoration(
                                color: snapShot.data != true
                                    ? Colors.grey[300]
                                    : const Color(0xff134736),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(16),
                                ),
                              ),
                              child: const Center(
                                child: Text(
                                  'Masuk',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
