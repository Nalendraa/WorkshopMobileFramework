import 'package:flutter/material.dart';
import 'package:metaworld/font_style.dart';
import 'package:metaworld/custom_colors.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            appBar: AppBar(title: Text('Metaworld'), backgroundColor: h1),
            body: SafeArea(
                child: Container(
                    margin: EdgeInsets.only(
                        left: 30.0, right: 30.0, top: 0, bottom: 0),
                    padding: EdgeInsets.only(
                        left: 0, right: 0, top: 0, bottom: 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image(
                          image: AssetImage('assets/img/img1.png'),
                          width: 400,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 15.0, bottom: 5.0),
                          child: Text(
                            "Welcome to Metaworld",
                            style: mainHeader,
                          ),
                        ),
                        Text(
                          "Say Hello! to everyone in the \nNew World",
                          style: subHeader,
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ))));
  }
}
