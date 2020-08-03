import 'package:flutter/material.dart';
import './database.dart';
import 'package:modelapp/first.dart';
import './checklist.dart';
import 'dart:async';
import 'package:sqflite/sqflite.dart';


int flag ;
bool toggleValue;

class Logs extends StatefulWidget {
  @override
  _Logs createState() => _Logs();
}

class _Logs extends State<Logs> {


  //int tvalue=0;
  @override
  void didUpdateWidget(Logs oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    setState(() {});
  }

  getFirstLetter(String title) {
    return title.substring(0, 1);
  }


  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Checklist logs'),
         backgroundColor:Color(0xFFFE8A7E),
        actions: <Widget>[
          RaisedButton(
           color: Color(0xFFFE8A7E),
            onPressed: () {
              ChecklistDatabaseProvider.db.deleteAllChecklist();
              setState(() {});
            },
            child: Text(
              "Delete all",
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
      body: Stack(
        children: [
//          SizedBox(
//            height: 200,
//          ),

          Container(
            padding: EdgeInsets.only( bottom: 50),
            child: FutureBuilder<List<Checklist>>(
              future: ChecklistDatabaseProvider.db.getAllChecklist(),
              builder:
                  (BuildContext context,
                  AsyncSnapshot<List<Checklist>> snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: snapshot.data.length,
                    itemBuilder: (BuildContext context, int index) {
                      Checklist item = snapshot.data[index];
                      return Card(
                        key: UniqueKey(),
                        child: ListTile(
                          title: Text(item.name),
                          subtitle:Text('\nInspect equipment for loose connections burned insulation or any other signs of wear\nAns:'+item.ans1+'\n\n'+'Battery terminal connections will be inspected and tightened and re-torquesd:\nAns:'+item.ans2+'\n'
                              +'\nItems inspected and claimed fit\nAns:'+item.ans3a+'\n'+item.ans3b+'\n'+item.ans3c+'\n'+item.ans3d+'\n'),
                          leading: CircleAvatar(
                            backgroundColor:Color(0xFFFE8A7E),
                            foregroundColor: Colors.white,
                            child: Text(getFirstLetter(item.name),
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ),

                          trailing: GestureDetector(
                            child: (Icon(
                              Icons.delete,
                              color:Color(0xFFFE8A7E),
                            )),
                            onTap: () {
                              ChecklistDatabaseProvider.db
                                  .deleteChecklistWithId(item.id);
                              setState(() {});
                            },
                          ),
                        ),
                      );
                    },
                  );
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              },
            ),
          ),
        ],
      ),
    );
  }

}