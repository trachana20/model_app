import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:demo/custom_navigation_drawer.dart';

class Daily extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DailyState();
  }
}

class _DailyState extends State<Daily> {
  @override
  String radioItem = '';

  bool oilVal = false;
  bool spdVal = false;
  bool sndVal = false;
  bool stpVal = false;

  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
        accentColor: Colors.grey,
      ),
      darkTheme: ThemeData.dark(),
      home: SafeArea(
        child: new Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(70.0),
            child: AppBar(
//            elevation: 0.0,
              title: Text(
                'Tool Track',
//          textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              centerTitle: true,
              leading: new IconButton(
                icon: new Icon(Icons.arrow_back_ios, color: Colors.white),
                onPressed: () => Navigator.of(context).pop(),
              ),
//            flexibleSpace: Container(
//              decoration: BoxDecoration(
//                  gradient: LinearGradient(
//                      begin: Alignment.topLeft,
//                      end: Alignment.bottomRight,
//                      colors: <Color>[
//                        Color(0xFF545454),
//                        Color(0xFF545454),
//                      ])),
//            ),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
//                  padding: const EdgeInsets.all(10.0),
                  padding:EdgeInsets.fromLTRB(0.0,10.0,0.0, 0.0),
                  child: Text(
                    'Daily Checklist',
//                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: new BoxDecoration(
                      color: Color(0xFF545454),
                      border: Border.all(color: Color(0xFF545454), width: 8),
                      borderRadius: BorderRadius.circular(0.0),
                    ),
                    child: Column(
                      children: <Widget>[
                        Text(
                          '1.To check Radiator fins',
//                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 19.0,
                            color: Colors.white,
                          ),
                        ),
                        RadioListTile(
                          groupValue: radioItem,
                          activeColor: Colors.white,
                          title: Text('Good',
                            style: TextStyle(
//                            fontWeight: FontWeight.bold,
                              fontSize: 19.0,
                              color: Colors.white,
                            ),
                          ),
                          value: 'Item 1',
                          onChanged: (val) {
                            setState(() {
                              radioItem = val;
                            });
                          },
                        ),
                        RadioListTile(
                          groupValue: radioItem,
                          activeColor: Colors.white,
                          title: Text('Bad',
                            style: TextStyle(
//                            fontWeight: FontWeight.bold,
                              fontSize: 19.0,
                              color: Colors.white,
                            ),
                          ),
                          value: 'Item 2',
                          onChanged: (val) {
                            setState(() {
                              radioItem = val;
                            });
                          },
                        ),
                        RadioListTile(
                          groupValue: radioItem,
                          activeColor: Colors.white,
                          title: Text('Moderate',
                            style: TextStyle(
//                            fontWeight: FontWeight.bold,
                              fontSize: 19.0,
                              color: Colors.white,
                            ),
                          ),
                          value: 'Item 3',
                          onChanged: (val) {
                            setState(() {
                              radioItem = val;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: new BoxDecoration(
                      color: Color(0xFF545454),
                      border: Border.all(color: Color(0xFF545454), width: 8),
                      borderRadius: BorderRadius.circular(0.0),
                    ),
                    child: Column(
                      children: <Widget>[
                        Text(
                          '2. Problems faced at the time of working\n',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 19.0,
                            color: Colors.white,
                          ),
                        ),
                        Row(
//                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Checkbox(
                              value: oilVal,
                              activeColor: Colors.white,
                              checkColor: Colors.black54,
                              onChanged: (bool value) {
                                setState(() {
                                  oilVal = value;
                                });
                              },
                            ),
                            Text("Oil leakage",
                              textAlign: TextAlign.left,
                              style: TextStyle(
//                                fontWeight: FontWeight.bold,
                                fontSize: 19.0,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Row(
//                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Checkbox(
                              value: spdVal,
                              activeColor: Colors.white,
                              checkColor: Colors.black54,
                              onChanged: (bool value) {
                                setState(() {
                                  spdVal = value;
                                });
                              },
                            ),
                            Text("Speed reduction",
                              textAlign: TextAlign.left,
                              style: TextStyle(
//                                fontWeight: FontWeight.bold,
                                fontSize: 19.0,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Row(
//                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Checkbox(
                              value: sndVal,
                              activeColor: Colors.white,
                              checkColor: Colors.black54,
                              onChanged: (bool value) {
                                setState(() {
                                  sndVal = value;
                                });
                              },
                            ),
                            Text("Sound pollution",
                              textAlign: TextAlign.left,
                              style: TextStyle(
//                                fontWeight: FontWeight.bold,
                                fontSize: 19.0,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Row(
//                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Checkbox(
                              value: stpVal,
                              activeColor: Colors.white,
                              checkColor: Colors.black54,
                              onChanged: (bool value) {
                                setState(() {
                                  stpVal = value;
                                });
                              },
                            ),
                            Text("Stops working while working",
                              textAlign: TextAlign.left,
                              style: TextStyle(
//                                fontWeight: FontWeight.bold,
                                fontSize: 19.0,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: new BoxDecoration(
                      color: Color(0xFF545454),
                      border: Border.all(color: Color(0xFF545454), width: 8),
                      borderRadius: BorderRadius.circular(0.0),
                    ),
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Other issues with the tool\n',
//                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 19.0,
                            color: Colors.white,
                          ),
                        ),
                        TextField(
                          style: TextStyle(color: Colors.white, fontSize: 19.0,),
                          minLines: 4,
                          maxLines: 10,
                          autocorrect: true,
                          decoration: InputDecoration(
                            hintText: 'Enter your problems here',
                            border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(0)),
                              borderSide: BorderSide(width: 1,color: Colors.grey),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(0)),
                              borderSide: BorderSide(width: 1,color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
