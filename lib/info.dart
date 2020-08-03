import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Info extends StatefulWidget {
  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      //child: ConstrainedBox(
       // constraints: BoxConstraints(),
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
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 5,bottom:100.0),
              child: Column(
                children: <Widget>[
                  Text(
                    'Basic information:',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Color(0xFF440206),
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Container(
                      height: screenHeight/4,
                      width: screenWidth/1.5,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              'images/upsunit.jpg'),
                          fit: BoxFit.fill,
                        ),
                        shape: BoxShape.rectangle,
                      ),
                    ),
                  ),
                  Wrap(
                    children: [
                      Text(
                        'An Uninterruptible Power Supply (UPS) is defined as a piece of electrical equipment which can be used as an immediate power source to the connected load when there is any failure in the main input power source.\n\nIn a UPS, the energy is generally stored in flywheels, batteries, or super capacitors. When compared to other immediate power supply system, UPS have the advantage of immediate protection against the input power interruptions. It has very short on-battery run time; however this time is enough to safely shut down the connected apparatus (computers, telecommunication equipment etc) or to switch on a standby power source.\n\nUPS can be used as a protective device for some hardware which can cause serious damage or loss with a sudden power disruption. Uninterruptible power source, Battery backup and Flywheel back up are the other names often used for UPS. The available size of UPS units ranges from 200 VA which is used for a solo computer to several large units up to 46 MVA.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Color(0xFF440206),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
    //  ),
    );
  }
}
