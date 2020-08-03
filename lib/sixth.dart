import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modelapp/database.dart';
import 'package:modelapp/checklist.dart';
import 'package:toast/toast.dart';
enum SingingCharacter { one,two }
enum SingingCharacter1 {one1,two1}
String ans1='Damage present';
String ans2='Connections are in good condition';
String ans3a='AC Capacitor-Not fit';
String ans3b='DC Capacitor-Not fit';
String ans3c='LV Switchgear-Not fit';
String ans3d='Batteries-Not fit';
class Sixth extends StatefulWidget {
  final bool edit;
  final Checklist checklist;

  Sixth(this.edit, {this.checklist})
      : assert(edit == true || checklist == null);
  @override
  _Sixth createState() => _Sixth();
}


class _Sixth extends State<Sixth> {
  final _formKey = GlobalKey<FormState>();
  SingingCharacter _character = SingingCharacter.one;
  SingingCharacter1 _character1= SingingCharacter1.one1;
  int flag,flag1;
  bool Val1 = false;
  bool Val2 = false;
  bool Val3 = false;
  bool Val4 = false;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (widget.edit == true) {
//      nameEditingController.text = widget.checklist.name;
//      ans1EditingController.text = widget.checklist.ans1;
//      ans2EditingController.text =  widget.checklist.ans2;
//      ans3aEditingController.text = widget.checklist.ans3a;
//      ans3bEditingController.text = widget.checklist.ans3b;
//      ans3cEditingController.text = widget.checklist.ans3c;
//      ans3dEditingController.text = widget.checklist.ans3d;
    }
  }

  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
          body: Stack(
            children: <Widget>[
              Container(
                height: 150.0,
                width: screenWidth,
                padding: EdgeInsets.only(top:30),
                color:  Color(0xFFFD7465),
                child:Text(
                  'INSPECTION',
                  textAlign:TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: IconButton(
                    icon: Icon(Icons.arrow_back),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ),
              Positioned(
                top: 100.0,
                child: Container(
                  height: screenHeight - 190.0,
                  width: screenWidth,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40.0),
                          topRight: Radius.circular(40.0))),
                  child: ListView(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                            top: 10.0, left: 20.0, right: 20.0, bottom: 10.0),
                        child: Container(
                          width: screenWidth - 40.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'UPS unit 6',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w900,
                                  fontSize: 22.0,
                                  color: Color(0xFF440206),
                                ),
                              ),
                              // ChecklistDatabaseProvider.db.insertChecklist(checklist)
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 10.0, left: 5.0, right: 5.0, bottom: 10.0),
                        child: Container(
                          width: screenWidth - 10.0,
                          height: 220.0,
                          //width: 335.0,
                          decoration: BoxDecoration(
                            color:Color(0xFFFE8A7E),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(25.0),
                              topRight: Radius.circular(25.0),
                              bottomLeft:Radius.circular(25.0),
                              bottomRight: Radius.circular(25.0),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[

                              Text(
                                '\n  QUICK READ:\n\n - general technical info\n\n - general settingd info\n\n - general technical info\n\n - general settings info\n\n',

                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w900,
                                    fontSize: 14.0
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      SingleChildScrollView(
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 20.0,
                              right: 20.0,
                              bottom: 10.0,
                              top: 5.0
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                  'Checklist ',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w900,
                                    fontSize: 20.0,
                                  )
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(''
                                  'Inspect equipment for loose connections, burned insulation or any other signs of wear.',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 16.0,
                                    color:Color(0xFF440206),
                                  )
                              ),
                              ListTile(
                                title: const Text('damage present'),
                                leading: Radio(
                                  activeColor: Color(0xFFFE8A7E),
                                  value: SingingCharacter.one,
                                  groupValue: _character,
                                  onChanged: (value) {
                                    setState(() {
                                      _character = value;
                                      //print(value);
                                      //print(_character);
                                      //ans1=_character.toString();
                                      //print(ans1);
                                      ans1='damage present';
                                    });
                                  },
                                ),
                              ),
                              ListTile(
                                title: const Text('no visible damage'),
                                leading: Radio(
                                  activeColor:  Color(0xFFFE8A7E),
                                  value: SingingCharacter.two,
                                  groupValue: _character,
                                  onChanged: (value) {
                                    setState(() {
                                      _character = value;
                                      // print(value);
                                      flag=1;
                                      ans1='no vsible damage';
                                    });
                                  },

                                ),

                              ),
                              Text(
                                  'Battery terminal connections will be inspected and tightened and re-torqued.',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 16.0,
                                    color:Color(0xFF440206),
                                  )
                              ),
                              ListTile(
                                title: const Text('connection are in good condition'),
                                leading: Radio(
                                  activeColor: Color(0xFFFE8A7E),
                                  value: SingingCharacter1.one1,
                                  groupValue: _character1,
                                  onChanged: (value) {
                                    setState(() {
                                      _character1 = value;
                                      ans2='Connections are in good condition';
                                    });
                                  },
                                ),
                              ),
                              ListTile(
                                title: const Text('connections are damaged'),
                                leading: Radio(
                                  activeColor:  Color(0xFFFE8A7E),
                                  value: SingingCharacter1.two1,
                                  groupValue: _character1,
                                  onChanged: (value) {
                                    setState(() {
                                      _character1 = value;
                                      flag1=1;
                                      ans2='Connections are damaged';
                                    });
                                  },
                                ),
                              ),

                              Text(
                                  'Items inspected and claimed fit\n',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 16.0,
                                    color:Color(0xFF440206),
                                  )
                              ),
                              Row(
//                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(left:20.0),
                                    child: Checkbox(
                                      value: Val1,
                                      activeColor:  Color(0xFFFE8A7E),
                                      checkColor: Colors.black54,
                                      onChanged: (bool value) {
                                        setState(() {
                                          Val1 = value;
                                          // print(value);
                                          if(Val1==true)
                                          {
                                            ans3a='AC Capacitor';
                                          }
                                        });
                                      },
                                    ),
                                  ),
                                  Text("AC Capacitor",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
//                                fontWeight: FontWeight.bold,
                                      fontSize: 16.0,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
//                          mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(left:20.0),
                                    child: Checkbox(
                                      value: Val2,
                                      activeColor:  Color(0xFFFE8A7E),
                                      checkColor: Colors.black54,
                                      onChanged: (bool value) {
                                        setState(() {
                                          Val2 = value;
                                          if(Val2==true)
                                          {
                                            ans3b='DC Capacitor';
                                          }
                                        });
                                      },
                                    ),
                                  ),
                                  Text("DC Capacitor",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
//                                fontWeight: FontWeight.bold,
                                      fontSize: 16.0,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
//                          mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(left:20.0),
                                    child: Checkbox(
                                      value: Val3,
                                      activeColor:  Color(0xFFFE8A7E),
                                      checkColor: Colors.black54,
                                      onChanged: (bool value) {
                                        setState(() {
                                          Val3 = value;
                                          if(Val3==true)
                                          {
                                            ans3c='LV Switchgear';
                                          }
                                        });
                                      },
                                    ),
                                  ),
                                  Text("LV Switchgear",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
//                                fontWeight: FontWeight.bold,
                                      fontSize: 16.0,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
//                          mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(left:20.0),
                                    child: Checkbox(
                                      value: Val4,
                                      activeColor:  Color(0xFFFE8A7E),
                                      checkColor: Colors.black54,
                                      onChanged: (bool value) {
                                        setState(() {
                                          Val4 = value;
                                          if(Val4==true)
                                          {
                                            ans3d='Battries';
                                          }
                                        });
                                      },
                                    ),
                                  ),
                                  Text("Battries",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
//                                fontWeight: FontWeight.bold,
                                      fontSize: 16.0,
                                      color: Colors.black,
                                    ),
                                  ),

                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                padding: EdgeInsets.only(left:screenWidth/4),
                                //width: screenWidth/2,
                                child: RaisedButton(
                                  padding: EdgeInsets.only(left:50,right:50),
                                  child: Text('Save',
                                    style:TextStyle(
                                      fontSize:16.0,
                                      color:Colors.black,
                                    ),
                                  ),
                                  onPressed: () {
                                    ChecklistDatabaseProvider.db.insertChecklist(new Checklist(
                                      name:'UPS Unit6',
                                      ans1: ans1,
                                      ans2:ans2,
                                      ans3a: ans3a,
                                      ans3b: ans3b,
                                      ans3c: ans3c,
                                      ans3d: ans3d,
                                    ));
                                    Toast.show("Saved", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
                                  },

                                ),
                              )





                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }

}