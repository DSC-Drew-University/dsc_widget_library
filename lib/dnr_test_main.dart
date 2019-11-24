import 'package:dsc_widget_library/dnr_blurb_prototypes.dart';
import 'package:flutter/material.dart';

main() => runApp(Main());


class Main extends StatelessWidget{

  final List<BlurbVariantTwo> entries = <BlurbVariantTwo>[
    BlurbVariantTwo(
      eventTitle: "DSOC Group Therapy Session",
      clubName: "DSOC",
      dateTime: "Thursday, November 21",
      location: "Hogwarts Building",
    ),
    BlurbVariantTwo(
      eventTitle: "DSOC Group Therapy Session",
      clubName: "DSOC",
      dateTime: "Thursday, November 21",
      location: "Hogwarts Building",
    )
  ];



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("DNR TESTING BLURB"),
          backgroundColor: Colors.blueGrey,
        ),
        body: Column(
          children: entries,
        ),
      ),
    );
  }
}