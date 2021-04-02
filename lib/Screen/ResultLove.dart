import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class ResultLove extends StatefulWidget {
  final String male2;
  final String female2;

  ResultLove({this.male2, this.female2});

  @override
  _ResultLoveState createState() =>
      _ResultLoveState(male: male2, female: female2);
}

class _ResultLoveState extends State<ResultLove> {
  final String male;
  final String female;

  String data;

  _ResultLoveState({this.male, this.female});
  Future getData() async {
    Random random = new Random();
    int randomNumber = random.nextInt(101);
    return randomNumber;
  }

  callme() async {
    await Future.delayed(Duration(seconds: 5));
    getData().then((value) => {
          setState(() {
            data = value.toString();
          })
        });
  }

  @override
  void initState() {
    super.initState();
    callme();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF1A1A1),
      appBar: AppBar(
        backgroundColor: Color(0xffFB4E4E),
        leading: Container(
          margin: EdgeInsets.only(left: 10),
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/gambar/logo.png',
              ),
            ),
          ),
        ),
        title: Text(
          "Kandy_Software",
          style: TextStyle(
            color: Colors.white,
            fontFamily: "segoe",
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            margin:
                EdgeInsets.only(left: 24.0, right: 24.0, top: 50, bottom: 24),
            width: MediaQuery.of(context).size.width,
            height: (MediaQuery.of(context).size.height * 0.15),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/gambar/iconlove.png',
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 24, right: 24, bottom: 10),
            width: MediaQuery.of(context).size.width,
            height: (MediaQuery.of(context).size.height * 0.25),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/gambar/icon1.png',
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 24, right: 24, bottom: 10),
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/gambar/male2.png',
                      ),
                    ),
                  ),
                ),
                Center(
                    child: data == null
                        ? CircularProgressIndicator()
                        : Text(
                            "$data%",
                            style: TextStyle(
                                color: Color(0xffFB1F20),
                                fontSize: 40,
                                fontWeight: FontWeight.bold),
                          )),
                Container(
                  margin: EdgeInsets.only(left: 24, right: 24, bottom: 10),
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/gambar/femele2.png',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "$male",
                  style: TextStyle(
                      color: Color(0xff341FFB),
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "$female",
                  style: TextStyle(
                      color: Color(0xffEF425E),
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
