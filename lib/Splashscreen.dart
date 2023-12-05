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

class Splashscreenstate extends State<Splashscreen>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation animation;
  @override
  void initState() {
    // TODO: implement initState

    Future.delayed(
      Duration(seconds: 6),
      () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Homescreen(),
          )),
    );
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 4));
    animation =
        Tween<double>(begin: 100, end: 300).animate(animationController);
    animationController.addStatusListener((status) {
      setState(() {});
    });
    animationController.forward();
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
                Padding(
                  padding: const EdgeInsets.only(top: 300),
                  child: Center(
                    child: Image.asset(
                      'Assates/Images/finalbcimg.png',
                      fit: BoxFit.fill,
                      height: animation.value,
                      width: animation.value,
                      repeat: ImageRepeat.noRepeat,
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
