import 'package:modelapp/fifth.dart';
import 'package:modelapp/first.dart';
import 'package:flutter/material.dart';
import 'package:modelapp/forth.dart';
import 'package:modelapp/info.dart';
import 'package:modelapp/products_list.dart';
import 'package:modelapp/logs.dart';
import 'package:modelapp/second.dart';
import 'package:modelapp/sixth.dart';
import 'package:modelapp/third.dart';

void main() => runApp(MyApp());
String search_ans = null;
var _controller = TextEditingController();
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>

    with SingleTickerProviderStateMixin {
  TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(vsync: this, length: 3);
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Color(0xFFF9EFEB),
         body: ConstrainedBox(
           constraints: BoxConstraints(),
           child: Column(
           // body: ListView(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      height: 185.0,
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.only(bottomRight: Radius.circular(75.0)),
                          color: Color(0xFFFD7465)),
                    ),
                    Container(
                      height: 110.0,
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.only(bottomRight: Radius.circular(65.0)),
                          color: Color(0xFFFE8A7E)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 35.0, left: 15.0),
                      child: Text(
                        'Products Check',
                        style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 75.0, left: 15.0),
                      child: Text(
                        'Check your way to success!!!',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 120.0, left: 15.0, right: 35.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(25.0),
                              bottomLeft: Radius.circular(5.0),
                              topLeft: Radius.circular(5.0),
                            )),
                        child: TextField(
                          controller: _controller,
                          //keyboardType: TextInputType.,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              onPressed: () => _controller.clear(),
                              icon: Icon(Icons.clear,color: Colors.grey),
                            ),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(top: 14.0),
                            hintText: 'Search',
                            hintStyle: TextStyle(fontSize: 14.0),
                            prefixIcon: Icon(Icons.search, color: Colors.grey),
                          ),
                          onChanged: (String text)
                          {
                            setState(() {
                              search_ans=text;
                              search_ans=search_ans.toLowerCase();
                              if((search_ans=='ups unit1')|(search_ans=='upsunit1')|(search_ans=='ups unit 1'))
                                {
                                  //search_ans=null;
                                  Navigator.of(context).push(
                                    MaterialPageRoute<Null>(builder: (BuildContext context) {
                                      return new First(true);
                                    },
                                    ),
                                  );
                                }
                              else if((search_ans=='ups unit2')|(search_ans=='upsunit2')|(search_ans=='ups unit 2'))
                                {
                                  //search_ans=null;
                                  Navigator.of(context).push(
                                    MaterialPageRoute<Null>(builder: (BuildContext context) {
                                      return new Second(true);
                                    },
                                    ),
                                  );
                                }
                              else if((search_ans=='ups unit3')|(search_ans=='upsunit3')|(search_ans=='ups unit 3'))
                              {
                                Navigator.of(context).push(
                                  MaterialPageRoute<Null>(builder: (BuildContext context) {
                                    return new Third(true);
                                  },
                                  ),
                                );
                              }
                              else if((search_ans=='ups unit4')|(search_ans=='upsunit4')|(search_ans=='ups unit 4'))
                              {
                                Navigator.of(context).push(
                                  MaterialPageRoute<Null>(builder: (BuildContext context) {
                                    return new Forth(true);
                                  },
                                  ),
                                );
                              }
                              else if((search_ans=='ups unit5')|(search_ans=='upsunit5')|(search_ans=='ups unit 5'))
                              {
                                Navigator.of(context).push(
                                  MaterialPageRoute<Null>(builder: (BuildContext context) {
                                    return new Fifth(true);
                                  },
                                  ),
                                );
                              }
                              else if((search_ans=='ups unit6')|(search_ans=='upsunit6')|(search_ans=='ups unit 6'))
                              {
                                Navigator.of(context).push(
                                  MaterialPageRoute<Null>(builder: (BuildContext context) {
                                    return new Sixth(true);
                                  },
                                  ),
                                );
                              }
                            });
                          },
                        ),
                      ),
                    )
                  ],
                ),

                TabBar(
                  controller: tabController,
                  indicatorColor: Color(0xFFFE8A7E),
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorWeight: 3.0,
                  isScrollable: true,
                  labelColor: Color(0xFF440206),
                  unselectedLabelColor: Color(0xFF440206),
                  tabs: <Widget>[
                    Tab(
                      child: Text(
                        'BASIC INFORMATION',
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'INSPECTION',
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'LOGS',
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 10.0),
                Container(
                  height: MediaQuery.of(context).size.height/1.8,
                  color: Colors.white,
                  child: TabBarView(
                    controller: tabController,
                    children: <Widget>[
                      new Info(),
                      new ProductsList(),
                      new Logs(),
                    ],
                  ),
                ),
              ],
            //),
      ),
         ),
      ),
    );
  }
}
