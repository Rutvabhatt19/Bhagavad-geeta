import 'package:departure_bhagvadgeetaapp/Homescreen.dart';
import 'package:departure_bhagvadgeetaapp/Languegeprovider.dart';
import 'package:departure_bhagvadgeetaapp/Provider.dart';
import 'package:departure_bhagvadgeetaapp/Thememodal.dart';
import 'package:departure_bhagvadgeetaapp/Versespage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Summerypage extends StatefulWidget {
  int index = 0;
  Summerypage(this.index);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Summerypagestate(index: index);
  }
}

class Summerypagestate extends State<Summerypage> {
  int index;
  Summerypagestate({required this.index});
  @override
  void initState() {
    // TODO: implement initState
    Provider.of<Provider1>(context, listen: false).Ontap();
    Provider.of<Provider2>(context, listen: false).Ontap();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Consumer(
      builder: (context, ThemeModal themeModal, child) {
        return Scaffold(
          backgroundColor: themeModal.isDark ? Colors.black : Colors.white,
          appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: themeModal.isDark ? Colors.white : Colors.black,
                  size: 30,
                )),
            title: Text(
              'Adhayay ${index + 1}',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: themeModal.isDark ? Colors.white : Colors.black,
              ),
            ),
          ),
          body: Consumer(
            builder: (context, Providerall providerall, child) {
              return Consumer(
                builder: (context, Languegepro languegepro, child) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: SingleChildScrollView(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 300,
                              width: double.infinity,
                              child: Container(
                                height: 300,
                                width: double.infinity,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Adhyay : ${index + 1}",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 40,
                                      ),
                                    ),
                                    Text(
                                      modalall[index].name,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 40,
                                      ),
                                    ),
                                  ],
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                      'Assates/Images/Imgall.jpeg',
                                    ),
                                    fit: BoxFit.fill,
                                    repeat: ImageRepeat.noRepeat),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Text(
                                'Meaning of the name : ${modalall[index].name_meaning}',
                                style: TextStyle(
                                  color: themeModal.isDark
                                      ? Colors.white
                                      : Colors.black,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Text(
                                'Choose your language :',
                                style: TextStyle(
                                  color: themeModal.isDark
                                      ? Colors.white
                                      : Colors.black,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Row(
                                children: [
                                  TextButton(
                                      onPressed: () {
                                        languegepro.fun();
                                      },
                                      child: Text(
                                        'English',
                                        style: TextStyle(
                                          color: themeModal.isDark
                                              ? Colors.white
                                              : Colors.black,
                                          fontSize: 20,
                                        ),
                                      )),
                                  TextButton(
                                      onPressed: () {
                                        languegepro.fun2();
                                      },
                                      child: Text(
                                        'Hindi',
                                        style: TextStyle(
                                          color: themeModal.isDark
                                              ? Colors.white
                                              : Colors.black,
                                          fontSize: 20,
                                        ),
                                      )),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              languegepro.a
                                  ? modalall[index].chapter_summary
                                  : modalall[index].chapter_summary_hindi,
                              style: TextStyle(
                                color: themeModal.isDark
                                    ? Colors.white
                                    : Colors.black,
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Center(
                              child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) => Versespage(index),
                                    ));
                                  },
                                  child: Text(
                                    'Verses',
                                    style: TextStyle(
                                      color: themeModal.isDark
                                          ? Colors.white
                                          : Colors.black,
                                      fontSize: 20,
                                    ),
                                  )),
                            ),
                            SizedBox(
                              height: 50,
                            ),
                          ]),
                    ),
                  );
                },
              );
            },
          ),
        );
      },
    );
  }
}
