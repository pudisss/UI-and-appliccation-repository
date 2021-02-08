import "package:flutter/material.dart";
import "package:practise_flutter1/pages/introduce.dart";
import "package:practise_flutter1/pages/dev journey.dart";
import "package:practise_flutter1/pages/contact.dart";
import "package:practise_flutter1/pages/profile.dart";
import "package:practise_flutter1/pages/language.dart";
import "package:practise_flutter1/pages/more.dart";

void main() => runApp(Signup());

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Map color_theme = {
      "red": [Colors.red, Colors.pink]
    };
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              leading: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Image.asset("assets/images/backimage.png"),
              ),
              actions: [
                Container(
                    child: IconButton(
                        onPressed: () => Navigator.push(context,
                            MaterialPageRoute(builder: (context) => More())),
                        icon: Image.asset("assets/images/more.png")))
              ],
            ),
            body: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(children: [
                  Container(
                      margin: EdgeInsets.only(top: 5),
                      width: double.infinity,
                      height: 39,
                      decoration: BoxDecoration(color: Colors.white),
                      child: Column(
                        children: [
                          Container(
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.only(left: 15),
                              child: Text("About Me",
                                  style: TextStyle(
                                      fontFamily: "Oswald", fontSize: 25))),
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          Container(
                              height: 150,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: [
                                        Colors.green[200],
                                        Colors.lightGreen[400],
                                        Colors.green[500]
                                      ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight),
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(60),
                                      topRight: Radius.circular(60))),
                              child: Column(
                                children: [
                                  Container(
                                      alignment: Alignment.centerLeft,
                                      margin: EdgeInsets.only(top: 5, left: 10),
                                      child: Text("My Skills",
                                          style: TextStyle(
                                              fontFamily: "Oswald",
                                              fontSize: 25,
                                              color: Colors.white))),
                                  Container(
                                      alignment: Alignment.centerLeft,
                                      margin: EdgeInsets.only(top: 5, left: 3),
                                      child: Text(
                                          "You can view my skills at coding like the programming language that I can code or other.",
                                          style: TextStyle(
                                              fontFamily: "Oswald",
                                              fontSize: 15,
                                              color: Colors.white))),
                                  Container(
                                      alignment: Alignment.centerRight,
                                      margin: EdgeInsets.only(right: 40),
                                      child: Builder(
                                          builder: (context) => Container(
                                              child: RaisedButton(
                                                  onPressed: () => Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              Language())),
                                                  color: Colors.green,
                                                  textColor: Colors.white,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30)),
                                                  child: Text("View",
                                                      style: TextStyle(
                                                          fontFamily: "Oswald",
                                                          fontSize: 15))))))
                                ],
                              )),
                          Container(
                              height: 150,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [Colors.red, Colors.pink],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(60),
                                      topRight: Radius.circular(60))),
                              child: Column(
                                children: [
                                  Container(child: Text("Contact Me"))
                                ],
                              ))
                        ],
                      ))
                ]))));
  }
}
