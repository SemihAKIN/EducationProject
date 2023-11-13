import 'package:education_project/recurring/button_type.dart';
import 'package:education_project/recurring/color_variations.dart';
import 'package:flutter/material.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
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
            SizedBox(height: 40),
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Container(
                decoration: BoxDecoration(
                    color: ColorVariations.yellow,
                    borderRadius: BorderRadius.circular(50)),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.play_circle_outline_rounded,
                      color: ColorVariations.black,
                      size: 25,
                    )),
              ),
              Container(
                decoration: BoxDecoration(color: ColorVariations.yellow),
              )
            ]),
            Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [],
                )),
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
                    Center(
                      child: Column(
                        children: [
                          Container(
                            height: 50,
                            width: 250,
                            child: ButtonTypeNormal(
                              labeltext: "Answer 1",
                              colortype: ColorVariations.orange,
                              onPressed: () {},
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            height: 50,
                            width: 250,
                            child: ButtonTypeNormal(
                              labeltext: "Answer 2",
                              colortype: ColorVariations.orange,
                              onPressed: () {},
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            height: 50,
                            width: 250,
                            child: ButtonTypeNormal(
                              labeltext: "Answer 3",
                              colortype: ColorVariations.orange,
                              onPressed: () {},
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            height: 50,
                            width: 250,
                            child: ButtonTypeNormal(
                              labeltext: "Answer 4",
                              colortype: ColorVariations.orange,
                              onPressed: () {},
                            ),
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
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
