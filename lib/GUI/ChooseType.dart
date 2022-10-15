import 'package:flutter/material.dart';
import 'package:mtg/Services/Globals.dart' as globals;
// import 'package:google_mobile_ads/google_mobile_ads.dart';
// ca-app-pub-2443681598063662/7488107899

class BasicTile {
  int title;
  List<BasicTile> list;
  BasicTile({
    required this.title,
    this.list = const [],
  });
}

class ChooseType extends StatefulWidget {
  ChooseType({super.key});

  @override
  State<ChooseType> createState() => _ChooseTypeState();
}

class _ChooseTypeState extends State<ChooseType> {
  late TextEditingController _Life_value;

  var choosen = 4;
  var chooser = <BasicTile>[
    BasicTile(title: 4, list: [
      BasicTile(title: 1),
      BasicTile(title: 2),
      BasicTile(title: 3),
      BasicTile(title: 4),
      BasicTile(title: 5),
      BasicTile(title: 6),
      BasicTile(title: 7),
      BasicTile(title: 8),
    ])
  ];
  // Test Pubblicita
  // final BannerAd myBanner = BannerAd(
  //   adUnitId: "ca-app-pub-3940256099942544/6300978111",
  //   size: AdSize.banner,
  //   request: AdRequest(),
  //   listener: BannerAdListener(),
  // );

  @override
  void initState() {
    // TODO: implement initState
    _Life_value = TextEditingController();
    _Life_value.text = globals.life_points.toString();
    super.initState();
    // myBanner.load();
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 7, 19, 99),
      backgroundColor: Color.fromARGB(255, 48, 111, 150),
      body: Stack(children: <Widget>[
        Positioned(
          left: w / 4,
          top: h * 2 / 6,
          width: w / 2,
          child: SizedBox(
            height: h / 7,
            width: w / 3,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _Life_value,
                style: TextStyle(
                  color: Colors.white,
                ),
                cursorColor: Colors.white,
                // obscureText: true,
                decoration: InputDecoration(
                    labelStyle: TextStyle(color: Colors.white),
                    helperStyle: TextStyle(color: Colors.white),
                    fillColor: Colors.white,
                    hoverColor: Colors.white,
                    focusColor: Colors.white,
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1.0, color: Colors.white),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1.0, color: Colors.white),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    labelText: "Life"),
                onChanged: (text) {
                  globals.life_points = int.parse(_Life_value.text);
                },
              ),
            ),
          ),
        ),
        Positioned(
          left: w / 4,
          top: h * 3 / 6,
          width: w / 2,
          child: SizedBox(
            height: h / 11,
            width: w / 3,
            child: Container(
              color: Colors.white,
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/SegnaPunti');
                },
                child: Text("Play"),
              ),
            ),
          ),
        ),
        Positioned(
          left: w / 4,
          top: h / 6,
          width: w / 2,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Number of Players",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                width: w,
                child: Container(
                  color: Colors.white,
                  child: ExpansionTile(
                    title: ListTile(
                      title: Text(
                        choosen.toString(),
                      ),
                    ),
                    children: <Widget>[
                      ListTile(
                        title: Text(chooser[0].list[0].title.toString()),
                        onTap: () {
                          setState(() {
                            choosen = chooser[0].list[0].title;
                            globals.number_of_players = choosen;
                          });
                        },
                      ),
                      ListTile(
                        title: Text(chooser[0].list[1].title.toString()),
                        onTap: () {
                          setState(() {
                            choosen = chooser[0].list[1].title;
                            globals.number_of_players = choosen;
                          });
                        },
                      ),
                      ListTile(
                        title: Text(chooser[0].list[2].title.toString()),
                        onTap: () {
                          setState(() {
                            choosen = chooser[0].list[2].title;
                            globals.number_of_players = choosen;
                          });
                        },
                      ),
                      ListTile(
                        title: Text(chooser[0].list[3].title.toString()),
                        onTap: () {
                          setState(() {
                            choosen = chooser[0].list[3].title;
                            globals.number_of_players = choosen;
                          });
                        },
                      ),
                      ListTile(
                        title: Text(chooser[0].list[4].title.toString()),
                        onTap: () {
                          setState(() {
                            choosen = chooser[0].list[4].title;
                            globals.number_of_players = choosen;
                          });
                        },
                      ),
                      ListTile(
                        title: Text(chooser[0].list[5].title.toString()),
                        onTap: () {
                          setState(() {
                            choosen = chooser[0].list[5].title;
                            globals.number_of_players = choosen;
                          });
                        },
                      ),
                      ListTile(
                        title: Text(chooser[0].list[6].title.toString()),
                        onTap: () {
                          setState(() {
                            choosen = chooser[0].list[6].title;
                            globals.number_of_players = choosen;
                          });
                        },
                      ),
                      ListTile(
                        title: Text(chooser[0].list[7].title.toString()),
                        onTap: () {
                          setState(() {
                            choosen = chooser[0].list[7].title;
                            globals.number_of_players = choosen;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
