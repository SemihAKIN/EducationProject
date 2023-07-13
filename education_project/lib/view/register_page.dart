import 'package:education_project/recurring/color_variations.dart';
import 'package:education_project/recurring/font_style.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorVariations.orange,
      appBar: AppBar(
        backgroundColor: ColorVariations.yellow,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_rounded),
        ),
      ),
      body: Form(
          child: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeadingText(text: "Register"),
                  ],
                )),
            SizedBox(height: 20),
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
                  child: Column(children: [
                    SizedBox(height: 40),
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
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                                padding: EdgeInsets.all(10),
                                decoration:
                                    BoxDecoration(color: ColorVariations.white),
                                child: TextFormField(
                                  validator: (value) {},
                                  onChanged: (value) {},
                                  textInputAction: TextInputAction.next,
                                  style: TextStyle(color: ColorVariations.dark),
                                  decoration: InputDecoration(
                                      fillColor: ColorVariations.white,
                                      filled: true,
                                      hintStyle: TextStyle(
                                          color: ColorVariations.gray),
                                      hintText: "Email Adress"),
                                )),
                            Container(
                                padding: EdgeInsets.all(10),
                                decoration:
                                    BoxDecoration(color: ColorVariations.white),
                                child: TextFormField(
                                  validator: (value) {},
                                  onChanged: (value) {},
                                  textInputAction: TextInputAction.next,
                                  style: TextStyle(color: ColorVariations.dark),
                                  decoration: InputDecoration(
                                      fillColor: ColorVariations.white,
                                      filled: true,
                                      hintStyle: TextStyle(
                                          color: ColorVariations.gray),
                                      hintText: "Name"),
                                )),
                            Container(
                                padding: EdgeInsets.all(10),
                                decoration:
                                    BoxDecoration(color: ColorVariations.white),
                                child: TextFormField(
                                  validator: (value) {},
                                  onChanged: (value) {},
                                  textInputAction: TextInputAction.next,
                                  style: TextStyle(color: ColorVariations.dark),
                                  decoration: InputDecoration(
                                      fillColor: ColorVariations.white,
                                      filled: true,
                                      hintStyle: TextStyle(
                                          color: ColorVariations.gray),
                                      hintText: "Surname"),
                                )),
                            Container(
                                padding: EdgeInsets.all(10),
                                decoration:
                                    BoxDecoration(color: ColorVariations.white),
                                child: TextFormField(
                                  validator: (value) {},
                                  onChanged: (value) {},
                                  textInputAction: TextInputAction.next,
                                  style: TextStyle(color: ColorVariations.dark),
                                  decoration: InputDecoration(
                                      fillColor: ColorVariations.white,
                                      filled: true,
                                      hintStyle: TextStyle(
                                          color: ColorVariations.gray),
                                      hintText: "Password"),
                                )),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Center(
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: ColorVariations.orange,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)))),
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: 15, bottom: 15, left: 50, right: 50),
                            child: Text(
                              "Save",
                              style: TextStyle(
                                  color: ColorVariations.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                          )),
                    )
                  ]),
                ),
              ),
            ))
          ],
        ),
      )),
    );
  }
}
