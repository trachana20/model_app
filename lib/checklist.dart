import 'package:flutter/cupertino.dart';
import 'package:modelapp/database.dart';
class Checklist {
  int id;
  String name;
  String ans1;
  String ans2;
  String ans3a;
  String ans3b;
  String ans3c;
  String ans3d;

  Checklist({this.id, this.name, this.ans1, this.ans2,this.ans3a,this.ans3b,this.ans3c,this.ans3d});

  factory Checklist.fromMap(Map<String, dynamic> json) => new Checklist(
    id: json["id"],
    name: json["name"],
    ans1: json["ans1"],
    ans2: json["ans2"],
    ans3a: json["ans3a"],
    ans3b: json["ans3b"],
    ans3c: json["ans3c"],
    ans3d: json["ans3d"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "name": name,
    "ans1": ans1,
    "ans2": ans2,
    "ans3a": ans3a,
    "ans3b": ans3b,
    "ans3c": ans3c,
    "ans3d": ans3d,
  };
}

