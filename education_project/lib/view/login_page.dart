import 'package:education_project/recurring/color_variations.dart';
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
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 80,
            ),
            Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Login",
                        style: TextStyle(
                            color: ColorVariations.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold)),
                  ],
                )),
            SizedBox(height: 40),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: ColorVariations.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60))),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      children: [
                        SizedBox(height: 60),
                        Container(
                            decoration: BoxDecoration(
                                color: ColorVariations.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      color: ColorVariations.orange,
                                      blurRadius: 20,
                                      offset: Offset(0, 10))
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: ColorVariations.white),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        hintText: "Email Adress",
                                        hintStyle: TextStyle(
                                            color: ColorVariations.gray),
                                        border: InputBorder.none),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: ColorVariations.white),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        hintText: "Password",
                                        hintStyle: TextStyle(
                                            color: ColorVariations.gray),
                                        border: InputBorder.none),
                                  ),
                                ),
                              ]),
                            )),
                        SizedBox(height: 40),
                        Text(
                          "Forgot Password?",
                          style: TextStyle(color: ColorVariations.gray),
                        ), //)),
                        SizedBox(height: 40),
                        Container(
                          height: 50,
                          margin: EdgeInsets.symmetric(horizontal: 50),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: ColorVariations.orange),
                          child: Center(
                              child: Text(
                            "Login",
                            style: TextStyle(
                                color: ColorVariations.white,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
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
