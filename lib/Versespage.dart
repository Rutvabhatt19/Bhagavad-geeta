import 'package:departure_bhagvadgeetaapp/Bookmarkprovider.dart';
import 'package:departure_bhagvadgeetaapp/Homescreen.dart';
import 'package:departure_bhagvadgeetaapp/Languegeprovider.dart';
import 'package:departure_bhagvadgeetaapp/Provider.dart';
import 'package:departure_bhagvadgeetaapp/Settings.dart';
import 'package:departure_bhagvadgeetaapp/Thememodal.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Versespage extends StatefulWidget {
  int index;
  Versespage(this.index);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Versespagestate(index: index);
  }
}

class Versespagestate extends State<Versespage> {
  int index;
  Versespagestate({required this.index});
  @override
  void initState() {
    // TODO: implement initState
    Provider.of<Provider1>(context, listen: false).Ontap();
    Provider.of<Provider2>(context, listen: false).Ontap();
    Provider.of<Provider3>(context, listen: false).Ontap();
    Provider.of<Provider5>(context, listen: false).Ontap();
    Provider.of<Provider4>(context, listen: false).Ontap();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List list = [
      fun1(),
      fun2(),
      fun3(),
      fun4(),
      fun5(),
      fun1(),
      fun2(),
      fun3(),
      fun4(),
      fun5(),
      fun1(),
      fun2(),
      fun3(),
      fun4(),
      fun5(),
      fun1(),
      fun2(),
      fun3()
    ];

    // TODO: implement build
    return Consumer(builder: (context, ThemeModal themeModal, child) {
      return Scaffold(
        backgroundColor: themeModal.isDark ? Colors.black : Colors.white,
        body: SingleChildScrollView(
          child: SizedBox(
            height: 1000,
            child: list[index],
          ),
        ),
      );
    });
  }

  Widget fun1() {
    return Consumer(builder: (context, Provider1 provider1, child) {
      return Consumer(builder: (context, ThemeModal themeModal, child) {
        return Consumer(builder: (context, Bookmarkpref bookmarkpref, child) {
          return Scaffold(
            backgroundColor: themeModal.isDark ? Colors.black : Colors.white,
            appBar: AppBar(
              automaticallyImplyLeading: false,
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
                modalall[index].name,
                style: TextStyle(
                  color: themeModal.isDark ? Colors.white : Colors.black,
                ),
              ),
              actions: [
                IconButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Settings(),
                      ));
                    },
                    icon: Icon(
                      Icons.settings,
                      color: themeModal.isDark ? Colors.white : Colors.black,
                      size: 20,
                    ))
              ],
            ),
            body: ListView.builder(
              shrinkWrap: true,
              itemCount: modal1.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      backgroundColor:
                          themeModal.isDark ? Colors.black : Colors.white,
                      isScrollControlled: true,
                      builder: (context) {
                        return Padding(
                          padding: const EdgeInsets.all(20),
                          child: Consumer(
                              builder: (context, Languege2 languege2, child) {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                    child: Text(
                                  modal1[index].san,
                                  style: TextStyle(
                                      color: themeModal.isDark
                                          ? Colors.white
                                          : Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                )),
                                SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  "Choose your language :",
                                  style: TextStyle(
                                      color: themeModal.isDark
                                          ? Colors.white
                                          : Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    TextButton(
                                        onPressed: () {
                                          languege2.translationhin();
                                        },
                                        child: Text("Hindi",
                                            style: TextStyle(
                                                color: themeModal.isDark
                                                    ? Colors.white
                                                    : Colors.black,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold))),
                                    SizedBox(
                                      width: 50,
                                    ),
                                    TextButton(
                                        onPressed: () {
                                          languege2.translationeng();
                                        },
                                        child: Text("English",
                                            style: TextStyle(
                                                color: themeModal.isDark
                                                    ? Colors.white
                                                    : Colors.black,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold))),
                                    SizedBox(
                                      width: 50,
                                    ),
                                    TextButton(
                                        onPressed: () {
                                          languege2.translationguj();
                                        },
                                        child: Text("Gujrati",
                                            style: TextStyle(
                                                color: themeModal.isDark
                                                    ? Colors.white
                                                    : Colors.black,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold))),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  languege2.hin
                                      ? modal1[index].hi
                                      : languege2.eng
                                          ? modal1[index].en
                                          : modal1[index].guj,
                                  style: TextStyle(
                                      color: themeModal.isDark
                                          ? Colors.white
                                          : Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Expanded(child: SizedBox()),
                                Text(
                                    "${modalall[index].name}(${modal1[index].verse})",
                                    style: TextStyle(
                                        color: themeModal.isDark
                                            ? Colors.white
                                            : Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500)),
                              ],
                            );
                          }),
                        );
                      },
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      title: Center(
                          child: Text(
                        modal1[index].san,
                        style: TextStyle(
                            color:
                                themeModal.isDark ? Colors.white : Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      )),
                      leading: Text(
                        modal1[index].verse,
                        style: TextStyle(
                            color:
                                themeModal.isDark ? Colors.white : Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          print(modal1.length);
                          String newString =
                              "${modal1[index].san}\n(${modalall[index].name} - ${modalall[index].verses_count})";
                          if (newString.isNotEmpty) {
                            Provider.of<Bookmarkpref>(context, listen: false)
                                .addString(newString);
                          }
                        },
                        icon: Icon(
                          Icons.star,
                          color:
                              bookmarkpref.color ? Colors.grey : Colors.black,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        });
      });
    });
  }

  Widget fun2() {
    return Consumer(builder: (context, ThemeModal themeModal, child) {
      return Consumer(builder: (context, Provider2 Provider2, child) {
        return Consumer(builder: (context, Bookmarkpref bookmarkpref, child) {
          return Scaffold(
            backgroundColor: themeModal.isDark ? Colors.black : Colors.white,
            appBar: AppBar(
              automaticallyImplyLeading: false,
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
                modalall[index].name,
                style: TextStyle(
                  color: themeModal.isDark ? Colors.white : Colors.black,
                ),
              ),
              actions: [
                IconButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Settings(),
                      ));
                    },
                    icon: Icon(
                      Icons.settings,
                      color: themeModal.isDark ? Colors.white : Colors.black,
                      size: 20,
                    ))
              ],
            ),
            body: Center(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: modal2.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        backgroundColor:
                            themeModal.isDark ? Colors.black : Colors.white,
                        builder: (context) {
                          return Padding(
                            padding: const EdgeInsets.all(20),
                            child: Consumer(
                                builder: (context, Languege2 languege2, child) {
                              return Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(
                                    child: Text(
                                      modal2[index].san2,
                                      style: TextStyle(
                                          color: themeModal.isDark
                                              ? Colors.white
                                              : Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    "Choose your language :",
                                    style: TextStyle(
                                        color: themeModal.isDark
                                            ? Colors.white
                                            : Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      TextButton(
                                          onPressed: () {
                                            languege2.translationhin();
                                          },
                                          child: Text("Hindi",
                                              style: TextStyle(
                                                  color: themeModal.isDark
                                                      ? Colors.white
                                                      : Colors.black,
                                                  fontSize: 16,
                                                  fontWeight:
                                                      FontWeight.bold))),
                                      SizedBox(
                                        width: 50,
                                      ),
                                      TextButton(
                                          onPressed: () {
                                            languege2.translationeng();
                                          },
                                          child: Text("English",
                                              style: TextStyle(
                                                  color: themeModal.isDark
                                                      ? Colors.white
                                                      : Colors.black,
                                                  fontSize: 16,
                                                  fontWeight:
                                                      FontWeight.bold))),
                                      SizedBox(
                                        width: 50,
                                      ),
                                      TextButton(
                                          onPressed: () {
                                            languege2.translationguj();
                                          },
                                          child: Text("Gujrati",
                                              style: TextStyle(
                                                  color: themeModal.isDark
                                                      ? Colors.white
                                                      : Colors.black,
                                                  fontSize: 16,
                                                  fontWeight:
                                                      FontWeight.bold))),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    languege2.hin
                                        ? modal2[index].hi2
                                        : languege2.eng
                                            ? modal2[index].en2
                                            : modal2[index].guj2,
                                    style: TextStyle(
                                        color: themeModal.isDark
                                            ? Colors.white
                                            : Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Expanded(child: SizedBox()),
                                  Text(
                                      "${modalall[index].name}(${modal2[index].verse2})",
                                      style: TextStyle(
                                          color: themeModal.isDark
                                              ? Colors.white
                                              : Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500)),
                                ],
                              );
                            }),
                          );
                        },
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        title: Center(
                          child: Text(
                            modal2[index].san2,
                            style: TextStyle(
                                color: themeModal.isDark
                                    ? Colors.white
                                    : Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        leading: Text(
                          modal2[index].verse2,
                          style: TextStyle(
                              color: themeModal.isDark
                                  ? Colors.white
                                  : Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        trailing: IconButton(
                          onPressed: () {
                            print(modal2.length);
                            String newString =
                                "${modal2[index].san2}\n(${modalall[index].name} - ${modalall[index].verses_count})";
                            if (newString.isNotEmpty) {
                              Provider.of<Bookmarkpref>(context, listen: false)
                                  .addString(newString);
                            }
                          },
                          icon: Icon(
                            Icons.star,
                            color:
                                bookmarkpref.color ? Colors.grey : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        });
      });
    });
  }

  Widget fun3() {
    return Consumer(builder: (context, ThemeModal themeModal, child) {
      return Consumer(builder: (context, Provider3 provider3, child) {
        return Consumer(builder: (context, Bookmarkpref bookmarkpref, child) {
          return Scaffold(
            backgroundColor: themeModal.isDark ? Colors.black : Colors.white,
            appBar: AppBar(
              automaticallyImplyLeading: false,
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
                modalall[index].name,
                style: TextStyle(
                  color: themeModal.isDark ? Colors.white : Colors.black,
                ),
              ),
              actions: [
                IconButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Settings(),
                      ));
                    },
                    icon: Icon(
                      Icons.settings,
                      color: themeModal.isDark ? Colors.white : Colors.black,
                      size: 20,
                    ))
              ],
            ),
            body: Center(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: modal3.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        backgroundColor:
                            themeModal.isDark ? Colors.black : Colors.white,
                        builder: (context) {
                          return Padding(
                            padding: const EdgeInsets.all(20),
                            child: Consumer(
                                builder: (context, Languege2 languege2, child) {
                              return Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(
                                      child: Text(
                                    modal3[index].san3,
                                    style: TextStyle(
                                        color: themeModal.isDark
                                            ? Colors.white
                                            : Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  )),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    "Choose your language :",
                                    style: TextStyle(
                                        color: themeModal.isDark
                                            ? Colors.white
                                            : Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      TextButton(
                                          onPressed: () {
                                            languege2.translationhin();
                                          },
                                          child: Text("Hindi",
                                              style: TextStyle(
                                                  color: themeModal.isDark
                                                      ? Colors.white
                                                      : Colors.black,
                                                  fontSize: 16,
                                                  fontWeight:
                                                      FontWeight.bold))),
                                      SizedBox(
                                        width: 50,
                                      ),
                                      TextButton(
                                          onPressed: () {
                                            languege2.translationeng();
                                          },
                                          child: Text("English",
                                              style: TextStyle(
                                                  color: themeModal.isDark
                                                      ? Colors.white
                                                      : Colors.black,
                                                  fontSize: 16,
                                                  fontWeight:
                                                      FontWeight.bold))),
                                      SizedBox(
                                        width: 50,
                                      ),
                                      TextButton(
                                          onPressed: () {
                                            languege2.translationguj();
                                          },
                                          child: Text("Gujrati",
                                              style: TextStyle(
                                                  color: themeModal.isDark
                                                      ? Colors.white
                                                      : Colors.black,
                                                  fontSize: 16,
                                                  fontWeight:
                                                      FontWeight.bold))),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    languege2.hin
                                        ? modal3[index].hi3
                                        : languege2.eng
                                            ? modal3[index].en3
                                            : modal3[index].guj3,
                                    style: TextStyle(
                                        color: themeModal.isDark
                                            ? Colors.white
                                            : Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Expanded(child: SizedBox()),
                                  Text(
                                      "${modalall[index].name}(${modal3[index].verse3})",
                                      style: TextStyle(
                                          color: themeModal.isDark
                                              ? Colors.white
                                              : Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500)),
                                ],
                              );
                            }),
                          );
                        },
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        title: Center(
                            child: Text(
                          modal3[index].san3,
                          style: TextStyle(
                              color: themeModal.isDark
                                  ? Colors.white
                                  : Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        )),
                        leading: Text(
                          modal3[index].verse3,
                          style: TextStyle(
                              color: themeModal.isDark
                                  ? Colors.white
                                  : Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        trailing: IconButton(
                          onPressed: () {
                            print(modal3.length);
                            String newString =
                                "${modal3[index].san3}\n(${modalall[index].name} - ${modalall[index].verses_count})";
                            if (newString.isNotEmpty) {
                              Provider.of<Bookmarkpref>(context, listen: false)
                                  .addString(newString);
                            }
                          },
                          icon: Icon(
                            Icons.star,
                            color:
                                bookmarkpref.color ? Colors.grey : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        });
      });
    });
  }

  Widget fun4() {
    return Consumer(builder: (context, ThemeModal themeModal, child) {
      return Consumer(builder: (context, Provider4 provider4, child) {
        return Consumer(builder: (context, Bookmarkpref bookmarkpref, child) {
          return Scaffold(
            backgroundColor: themeModal.isDark ? Colors.black : Colors.white,
            appBar: AppBar(
              automaticallyImplyLeading: false,
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
                modalall[index].name,
                style: TextStyle(
                  color: themeModal.isDark ? Colors.white : Colors.black,
                ),
              ),
              actions: [
                IconButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Settings(),
                      ));
                    },
                    icon: Icon(
                      Icons.settings,
                      color: themeModal.isDark ? Colors.white : Colors.black,
                      size: 20,
                    ))
              ],
            ),
            body: Center(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: modal4.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        backgroundColor:
                            themeModal.isDark ? Colors.black : Colors.white,
                        isScrollControlled: true,
                        builder: (context) {
                          return Padding(
                            padding: const EdgeInsets.all(20),
                            child: Consumer(
                                builder: (context, Languege2 languege2, child) {
                              return Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(
                                      child: Text(
                                    modal4[index].san4,
                                    style: TextStyle(
                                        color: themeModal.isDark
                                            ? Colors.white
                                            : Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  )),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    "Choose your language :",
                                    style: TextStyle(
                                        color: themeModal.isDark
                                            ? Colors.white
                                            : Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      TextButton(
                                          onPressed: () {
                                            languege2.translationhin();
                                          },
                                          child: Text("Hindi",
                                              style: TextStyle(
                                                  color: themeModal.isDark
                                                      ? Colors.white
                                                      : Colors.black,
                                                  fontSize: 16,
                                                  fontWeight:
                                                      FontWeight.bold))),
                                      SizedBox(
                                        width: 50,
                                      ),
                                      TextButton(
                                          onPressed: () {
                                            languege2.translationeng();
                                          },
                                          child: Text("English",
                                              style: TextStyle(
                                                  color: themeModal.isDark
                                                      ? Colors.white
                                                      : Colors.black,
                                                  fontSize: 16,
                                                  fontWeight:
                                                      FontWeight.bold))),
                                      SizedBox(
                                        width: 50,
                                      ),
                                      TextButton(
                                          onPressed: () {
                                            languege2.translationguj();
                                          },
                                          child: Text("Gujrati",
                                              style: TextStyle(
                                                  color: themeModal.isDark
                                                      ? Colors.white
                                                      : Colors.black,
                                                  fontSize: 16,
                                                  fontWeight:
                                                      FontWeight.bold))),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    languege2.hin
                                        ? modal4[index].hi4
                                        : languege2.eng
                                            ? modal4[index].en4
                                            : modal4[index].guj4,
                                    style: TextStyle(
                                        color: themeModal.isDark
                                            ? Colors.white
                                            : Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Expanded(child: SizedBox()),
                                  Text(
                                      "${modalall[index].name}(${modal4[index].verse4})",
                                      style: TextStyle(
                                          color: themeModal.isDark
                                              ? Colors.white
                                              : Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500)),
                                ],
                              );
                            }),
                          );
                        },
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        title: Center(
                            child: Text(
                          modal4[index].san4,
                          style: TextStyle(
                              color: themeModal.isDark
                                  ? Colors.white
                                  : Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        )),
                        leading: Text(
                          modal4[index].verse4,
                          style: TextStyle(
                              color: themeModal.isDark
                                  ? Colors.white
                                  : Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        trailing: IconButton(
                          onPressed: () {
                            print(modal4.length);
                            String newString =
                                "${modal4[index].san4}\n(${modalall[index].name} - ${modalall[index].verses_count})";
                            if (newString.isNotEmpty) {
                              Provider.of<Bookmarkpref>(context, listen: false)
                                  .addString(newString);
                            }
                          },
                          icon: Icon(
                            Icons.star,
                            color:
                                bookmarkpref.color ? Colors.grey : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        });
      });
    });
  }

  Widget fun5() {
    return Consumer(builder: (context, ThemeModal themeModal, child) {
      return Consumer(builder: (context, Provider5 provider5, child) {
        return Consumer(builder: (context, Bookmarkpref bookmarkpref, child) {
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
              automaticallyImplyLeading: false,
              title: Text(
                modalall[index].name,
                style: TextStyle(
                  color: themeModal.isDark ? Colors.white : Colors.black,
                ),
              ),
              actions: [
                IconButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Settings(),
                      ));
                    },
                    icon: Icon(
                      Icons.settings,
                      color: themeModal.isDark ? Colors.white : Colors.black,
                      size: 20,
                    ))
              ],
            ),
            body: Center(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: modal5.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        backgroundColor:
                            themeModal.isDark ? Colors.black : Colors.white,
                        isScrollControlled: true,
                        builder: (context) {
                          return Padding(
                            padding: const EdgeInsets.all(20),
                            child: Consumer(
                                builder: (context, Languege2 languege2, child) {
                              return Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(
                                      child: Text(
                                    modal5[index].san5,
                                    style: TextStyle(
                                        color: themeModal.isDark
                                            ? Colors.white
                                            : Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  )),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    "Choose your language :",
                                    style: TextStyle(
                                        color: themeModal.isDark
                                            ? Colors.white
                                            : Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      TextButton(
                                          onPressed: () {
                                            languege2.translationhin();
                                          },
                                          child: Text("Hindi",
                                              style: TextStyle(
                                                  color: themeModal.isDark
                                                      ? Colors.white
                                                      : Colors.black,
                                                  fontSize: 16,
                                                  fontWeight:
                                                      FontWeight.bold))),
                                      SizedBox(
                                        width: 50,
                                      ),
                                      TextButton(
                                          onPressed: () {
                                            languege2.translationeng();
                                          },
                                          child: Text("English",
                                              style: TextStyle(
                                                  color: themeModal.isDark
                                                      ? Colors.white
                                                      : Colors.black,
                                                  fontSize: 16,
                                                  fontWeight:
                                                      FontWeight.bold))),
                                      SizedBox(
                                        width: 50,
                                      ),
                                      TextButton(
                                          onPressed: () {
                                            languege2.translationguj();
                                          },
                                          child: Text("Gujrati",
                                              style: TextStyle(
                                                  color: themeModal.isDark
                                                      ? Colors.white
                                                      : Colors.black,
                                                  fontSize: 16,
                                                  fontWeight:
                                                      FontWeight.bold))),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    languege2.hin
                                        ? modal5[index].hi5
                                        : languege2.eng
                                            ? modal5[index].en5
                                            : modal5[index].guj5,
                                    style: TextStyle(
                                        color: themeModal.isDark
                                            ? Colors.white
                                            : Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Expanded(child: SizedBox()),
                                  Text(
                                      "${modalall[index].name}(${modal5[index].verse5})",
                                      style: TextStyle(
                                          color: themeModal.isDark
                                              ? Colors.white
                                              : Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500)),
                                ],
                              );
                            }),
                          );
                        },
                      );
                    },
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          onTap: () {
                            bookmarkpref.changecolor();
                          },
                          title: Center(
                              child: Text(
                            modal5[index].san5,
                            style: TextStyle(
                                color: themeModal.isDark
                                    ? Colors.white
                                    : Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          )),
                          leading: Text(
                            modal5[index].verse5,
                            style: TextStyle(
                                color: themeModal.isDark
                                    ? Colors.white
                                    : Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          trailing: IconButton(
                            onPressed: () {
                              print(modal5.length);
                              String newString =
                                  "${modal5[index].san5}\n${modalall[index].name} - ${modalall[index].verses_count})";
                              if (newString.isNotEmpty) {
                                Provider.of<Bookmarkpref>(context,
                                        listen: false)
                                    .addString(newString);
                              }
                            },
                            icon: Icon(
                              Icons.star,
                              color: bookmarkpref.color
                                  ? Colors.grey
                                  : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        });
      });
    });
  }
}
