import 'package:flutter/material.dart';
import 'package:kontakjodoh/Screen/ResultLove.dart';

class PageQuestion extends StatefulWidget {
  @override
  _PageQuestionState createState() => _PageQuestionState();
}

class _PageQuestionState extends State<PageQuestion> {
  String male, female;
  final formKey = new GlobalKey<FormState>();
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
      body: Form(
        key: formKey,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: TextFormField(
                  validator: (e) {
                    if (e.isEmpty) {
                      return "Please Insert Male";
                    }
                  },
                  onSaved: (e) {
                    setState(() {
                      male = e;
                    });
                  },
                  decoration: InputDecoration(
                    labelText: "Male",
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Male',
                    contentPadding: const EdgeInsets.only(
                        left: 14.0, bottom: 8.0, top: 8.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.white),
                      borderRadius: new BorderRadius.circular(25.7),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: new BorderSide(color: Colors.white),
                      borderRadius: new BorderRadius.circular(25.7),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: TextFormField(
                  validator: (e) {
                    if (e.isEmpty) {
                      return "Please Insert Female";
                    }
                  },
                  onSaved: (e) {
                    setState(() {
                      female = e;
                    });
                  },
                  decoration: InputDecoration(
                    labelText: "Female",
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Female',
                    contentPadding: const EdgeInsets.only(
                        left: 14.0, bottom: 8.0, top: 8.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.white),
                      borderRadius: new BorderRadius.circular(25.7),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: new BorderSide(color: Colors.white),
                      borderRadius: new BorderRadius.circular(25.7),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: MaterialButton(
                onPressed: () {
                  final form = formKey.currentState;

                  if (form.validate()) {
                    form.save();
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) =>
                            ResultLove(male2: male, female2: female)));
                  }
                },
                color: Color(0xffEF425E),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                child: Text("Commit"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
