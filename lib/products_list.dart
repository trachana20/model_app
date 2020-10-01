// it displays a list of all different machines  
import 'package:flutter/material.dart';
import 'package:modelapp/first.dart';
import 'package:modelapp/second.dart';
import 'package:modelapp/third.dart';
import 'package:modelapp/forth.dart';
import 'package:modelapp/fifth.dart';
import 'package:modelapp/sixth.dart';
class ProductsList extends StatefulWidget {
  @override
  _ProductsListState createState() => _ProductsListState();
}

class _ProductsListState extends State<ProductsList> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(

        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 5, right: 5),
            child: Container(
              padding: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(25.0),
                      bottomLeft: Radius.circular(25.0)),
                  color: Color(0xFFFE8A7E)),
              height: screenHeight / 12,
              width: screenWidth,
              child: Text(
                'Ups Unit',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        SizedBox(
          height: 17,
        ),
        Padding(
          padding: const EdgeInsets.only(left:5,right:5),
          child: new FlatButton(
            color: Color(0xFFF9EFEB),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute<Null>(builder: (BuildContext context) {
                        return new First(true);
                      }));
            },
            padding: EdgeInsets.only(top:20,bottom:20,left:100,right:100),
            child: Text(
              'UPS unit 1',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 21,
                color: Color(0xFF440206),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 17,
        ),
        Padding(
          padding: const EdgeInsets.only(left:10,right:10),
          child: new FlatButton(
            color: Color(0xFFF9EFEB),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute<Null>(builder: (BuildContext context) {
                      return new Second(true);
                    }));
            },
            padding: EdgeInsets.only(top: 20.0, bottom: 20.0,left:100.0,right: 100.0),
            child: Text(
              'UPS unit 2',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 21,
                color: Color(0xFF440206),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 17,
        ),
        Padding(
          padding: const EdgeInsets.only(left:10,right:10),
          child: new FlatButton(
            color: Color(0xFFF9EFEB),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute<Null>(builder: (BuildContext context) {
                      return new Third(true);
                    }));
            },
            padding: EdgeInsets.only(top: 20.0, bottom: 20.0,left:100.0,right: 100.0),
            child: Text(
              'UPS unit 3',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 21,
                color: Color(0xFF440206),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 17,
        ),
        Padding(
          padding: const EdgeInsets.only(left:10,right:10),
          child: new FlatButton(
            color: Color(0xFFF9EFEB),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute<Null>(builder: (BuildContext context) {
                      return new Forth(true);
                    }));
            },
            padding: EdgeInsets.only(top: 20.0, bottom: 20.0,left:100.0,right: 100.0),
            child: Text(
              'UPS unit 4',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 21,
                color: Color(0xFF440206),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 17,
        ),
        Padding(
          padding: const EdgeInsets.only(left:10,right:10),
          child: new FlatButton(
            color: Color(0xFFF9EFEB),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute<Null>(builder: (BuildContext context) {
                      return new Fifth(true);
                    }));
            },
            padding: EdgeInsets.only(top: 20.0, bottom: 20.0,left:100.0,right: 100.0),
            child: Text(
              'UPS unit 5',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 21,
                color: Color(0xFF440206),
              ),
            ),
          ),
        ),
          SizedBox(
            height: 17,
          ),
          Padding(
            padding: const EdgeInsets.only(left:10,right:10),
            child: new FlatButton(
              color: Color(0xFFF9EFEB),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute<Null>(builder: (BuildContext context) {
                      return new Sixth(true);
                    },
                    ),
                );
              },
              padding:
              EdgeInsets.only(top: 20.0, bottom: 20.0,left: 100.0,right: 100.0),
              child: Text(
                'UPS unit 6',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 21,
                  color: Color(0xFF440206),
                ),
              ),
            ),
          ),

      ], ),
    );
  }

}
