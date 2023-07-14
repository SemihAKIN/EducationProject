import 'package:education_project/recurring/button_type.dart';
import 'package:education_project/recurring/color_variations.dart';
import 'package:education_project/recurring/font_style.dart';
import 'package:education_project/view/game_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
            icon: Icon(Icons.arrow_back_rounded)),
      ),
      body: Container(
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
                    HeadingText(text: "How to play?"),
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
                  child: Column(
                    children: [
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
                                child: Center(
                                  child: BodyText(
                                      text:
                                          "oyunumuz video linki icermekte ve bu video izlendikten sonra cevaplanacak olan sorular ile devam etmekte. Dogru cevap verilmesi onemlidir."),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      ButtonType(
                        labeltext: 'Start',
                        colortype: ColorVariations.yellow,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => GamePage()));
                        },
                      )
                    ],
                  ),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
