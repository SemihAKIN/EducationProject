import 'package:education_project/recurring/button_type.dart';
import 'package:education_project/recurring/color_variations.dart';
import 'package:education_project/recurring/font_style.dart';
import 'package:education_project/view/home.dart';
import 'package:education_project/view/register_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorVariations.orange,
      body: Form(
        child: Container(
          width: double.infinity,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(
              height: 80,
            ),
            const Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeadingText(
                      text: "Login",
                    ),
                  ],
                )),
            _space40(),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    color: ColorVariations.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60))),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Column(children: [
                      const SizedBox(height: 60),
                      Container(
                          decoration: BoxDecoration(
                              color: ColorVariations.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                const BoxShadow(
                                    color: ColorVariations.orange,
                                    blurRadius: 20,
                                    offset: Offset(0, 10))
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: const BoxDecoration(
                                    color: ColorVariations.white),
                                child: TextFormField(
                                  validator: (value) {
                                    return value.toString().contains('@')
                                        ? null
                                        : 'Invalid Email';
                                  },
                                  onChanged: (value) {},
                                  keyboardType: TextInputType.emailAddress,
                                  textInputAction: TextInputAction.next,
                                  style: const TextStyle(
                                      color: ColorVariations.dark),
                                  decoration: InputDecoration(
                                      fillColor: ColorVariations.white,
                                      filled: true,
                                      hintText: "Email Adress",
                                      hintStyle: TextStyle(
                                          color: ColorVariations.gray)),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: const BoxDecoration(
                                    color: ColorVariations.white),
                                child: TextFormField(
                                  validator: (value) {
                                    return value.toString().length > 6
                                        ? null
                                        : 'Too Short';
                                  },
                                  onChanged: (value) {},
                                  keyboardType: TextInputType.visiblePassword,
                                  style: const TextStyle(),
                                  obscureText: true,
                                  textInputAction: TextInputAction.done,
                                  decoration: InputDecoration(
                                      fillColor: ColorVariations.white,
                                      filled: true,
                                      hintText: "Password",
                                      hintStyle: TextStyle(
                                          color: ColorVariations.gray)),
                                ),
                              ),
                            ]),
                          )),
                      _space40(),
                      InkWell(
                        onTap: () {},
                        child: const Text(
                          "Forgot Password?",
                          style: TextStyle(color: ColorVariations.dark),
                        ),
                      ),
                      _space40(),
                      Center(
                          child: ButtonType(
                        labeltext: "Login",
                        colortype: ColorVariations.orange,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        },
                      )),
                      _space40(),
                      Center(
                          child: ButtonType(
                        labeltext: 'Sign in',
                        colortype: ColorVariations.yellow,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegisterPage()));
                        },
                      )),
                    ]),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }

  SizedBox _space40() => const SizedBox(height: 40);
}
