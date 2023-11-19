import 'package:departure_bhagvadgeetaapp/Homescreen.dart';
import 'package:departure_bhagvadgeetaapp/Thememodal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Splashscreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Splashscreenstate();
  }
}

class Splashscreenstate extends State<Splashscreen> {
  @override
  void initState() {
    // TODO: implement initState

    Future.delayed(
      Duration(seconds: 3),
      () => Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => Homescreen(),
      )),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Consumer(
      builder: (context, ThemeModal themeModal, child) {
        return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(children: [
                Container(
                  height: 800,
                  width: 400,
                  child: Image.asset(
                    'Assates/Images/img3.jpeg',
                    fit: BoxFit.fill,
                    repeat: ImageRepeat.noRepeat,
                  ),
                ),
                Positioned(
                  top: 300,
                  left: 100,
                  child: Center(
                    child: Container(
                      height: 150,
                      width: 170,
                      child: Image.asset(
                        'Assates/Images/finalbcimg.png',
                        fit: BoxFit.fill,
                        repeat: ImageRepeat.noRepeat,
                      ),
                    ),
                  ),
                ),
              ]),
            ],
          ),
        );
      },
    );
  }
}
