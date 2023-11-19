import 'package:departure_bhagvadgeetaapp/Bookmarkprovider.dart';
import 'package:departure_bhagvadgeetaapp/Settings.dart';
import 'package:departure_bhagvadgeetaapp/Thememodal.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BookmarkPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BookmarkPageState();
  }
}

class BookmarkPageState extends State<BookmarkPage> {
  @override
  void initState() {
    // TODO: implement initState

    Provider.of<Bookmarkpref>(context, listen: false).loadString();
    super.initState();
  }

  Widget build(BuildContext context) {
    // TODO: implement build
    return Consumer(builder: (context, ThemeModal themeModal, child) {
      return Consumer(builder: (context, Bookmarkpref bprovider, child) {
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
                "BookMarks",
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
                        builder: (context) => Settings(),
                      ));
                    },
                    icon: Icon(
                      Icons.settings,
                      color: themeModal.isDark ? Colors.white : Colors.black,
                      size: 20,
                    )),
              ],
            ),
            body: bprovider.stringList.isEmpty
                ? Padding(
                    padding: const EdgeInsets.all(20),
                    child: Center(
                        child: Text(
                      "You dont'have eny Bookmark Yet ..",
                      style: TextStyle(
                          color:
                              themeModal.isDark ? Colors.white : Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    )),
                  )
                : Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text("All BookMark",
                            style: TextStyle(
                                color: themeModal.isDark
                                    ? Colors.white
                                    : Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold)),
                        Expanded(
                          child: SizedBox(
                            child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: bprovider.stringList.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ListTile(
                                    title: Text(bprovider.stringList[index],
                                        style: TextStyle(
                                            color: themeModal.isDark
                                                ? Colors.white
                                                : Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold)),
                                    trailing: IconButton(
                                      onPressed: () =>
                                          bprovider.removeStringList(
                                              bprovider.stringList[index]),
                                      icon: Icon(
                                        Icons.cancel,
                                        color: themeModal.isDark
                                            ? Colors.white
                                            : Colors.black,
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ));
      });
    });
  }
}
