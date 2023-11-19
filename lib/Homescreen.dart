import 'package:departure_bhagvadgeetaapp/Bookmark.dart';
import 'package:departure_bhagvadgeetaapp/Datamodal.dart';
import 'package:departure_bhagvadgeetaapp/Provider.dart';
import 'package:departure_bhagvadgeetaapp/Settings.dart';
import 'package:departure_bhagvadgeetaapp/Summerypage.dart';
import 'package:departure_bhagvadgeetaapp/Thememodal.dart';

import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class Homescreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Homescreenstate();
  }
}

List<DataModal1> modal1 = [];
List<DataModal2> modal2 = [];
List<DataModal3> modal3 = [];
List<DataModal4> modal4 = [];
List<DataModal5> modal5 = [];
List<DataModalall> modalall = [];

class Homescreenstate extends State<Homescreen> {
  bool c = false;
  @override
  void initState() {
    // TODO: implement initState
    Provider.of<Providerall>(context, listen: false).Ontap();
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
            automaticallyImplyLeading: false,
            title: Text(
              'Bhagvad Gita',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: themeModal.isDark ? Colors.white : Colors.black,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => BookmarkPage(),
                  ));
                },
                icon: Icon(Icons.bookmark_add,
                    color: themeModal.isDark ? Colors.white : Colors.black),
              ),
              IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Settings(),
                  ));
                },
                icon: Icon(Icons.settings,
                    color: themeModal.isDark ? Colors.white : Colors.black),
              ),
            ],
          ),
          body: Consumer(
            builder: (BuildContext context, Providerall providerall, child) {
              return Column(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 300,
                      child: ListView.builder(
                        itemCount: modalall.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(
                                left: 20, top: 20, right: 20, bottom: 10),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Summerypage(index),
                                ));
                              },
                              child: Container(
                                height: 70,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: themeModal.isDark
                                          ? Colors.white70
                                          : Colors.white70),
                                  borderRadius: BorderRadius.circular(10),
                                  color: themeModal.isDark
                                      ? Colors.black54
                                      : Colors.white70,
                                ),
                                child: Center(
                                  child: ListTile(
                                    leading: Text(
                                      "${index + 1}",
                                      style: TextStyle(
                                        color: themeModal.isDark
                                            ? Colors.white
                                            : Colors.black,
                                        fontSize: 20,
                                      ),
                                    ),
                                    title: Text(
                                      modalall[index].name,
                                      style: TextStyle(
                                        color: themeModal.isDark
                                            ? Colors.white
                                            : Colors.black,
                                        fontSize: 20,
                                      ),
                                    ),
                                    subtitle: Text(
                                      "Verses : ${modalall[index].verses_count}",
                                      style: TextStyle(
                                        color: themeModal.isDark
                                            ? Colors.white
                                            : Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            // Column(
                            //   children: [
                            //     Row(
                            //       children: [
                            //         Text(
                            //           "${index+1}",
                            //           style: TextStyle(
                            //             color: themeModal.isDark
                            //                 ? Colors.white
                            //                 : Colors.black,
                            //           ),
                            //         ),
                            //         Padding(
                            //           padding: const EdgeInsets.only(left: 20),
                            //           child: Text(
                            //             modalall[index].name,
                            //             style: TextStyle(
                            //               color: themeModal.isDark
                            //                   ? Colors.white
                            //                   : Colors.black,
                            //             ),
                            //           ),
                            //         ),
                            //       ],
                            //     ),
                            //     Padding(
                            //       padding: const EdgeInsets.only(top: 8.0),
                            //       child: Divider(color: themeModal.isDark?Colors.white:Colors.black,
                            //           height: 2),
                            //     ),
                            //   ],
                            // ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }
  // PersistentBottomSheetController Body(int i,Color c){
  //   return showBottomSheet(
  //     context: context, builder: (BuildContext context) {
  //       return  Column(
  //         children: [
  //           Text(modalall[0]['name'][1],
  //             style: TextStyle(
  //                 color: c
  //             ),),
  //         ],
  //       );
  //   },
  //   );
  // }
}
