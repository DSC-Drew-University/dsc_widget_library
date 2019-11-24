
import 'package:flutter/material.dart';

class BlurbVariantOne extends StatelessWidget{
  String eventTitle;
  String location;
  String clubName;
  String dateTime;

  BlurbVariantOne({String eventTitle, String location, String clubName, String dateTime}){
    this.eventTitle = eventTitle;
    this.location = location;
    this.clubName = clubName;
    this.dateTime = dateTime;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Card(
                    color: Colors.redAccent,
                    child: Text(eventTitle),
                  )
                ),
                Expanded(
                    child: Card(
                      color: Colors.greenAccent,
                      child: Text(clubName),
                    )
                )
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: Card(
                      color: Colors.greenAccent,
                      child: Text(location),
                    )
                ),
                Expanded(
                    child: Card(
                      color: Colors.greenAccent,
                      child: Text(dateTime),
                    )
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class BlurbVariantTwo extends StatelessWidget{

  String eventTitle;
  String location;
  String clubName;
  String dateTime;
  ClubLogo clubImage;

  BlurbVariantTwo({String eventTitle, String location, String clubName, String dateTime}){
    this.eventTitle = eventTitle;
    this.location = location;
    this.clubName = clubName;
    this.dateTime = dateTime;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: new Container(
        width: 350,
        height: 150,
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black,
              blurRadius: 10.0,
            )
          ],
          color: Colors.red,
        ),

        child: Stack(
          children: <Widget>[
            Positioned(
              child: ClubLogo(),
              bottom: 10,
              right: 10,
            ),
            Positioned(
              child: RichText(
                text: TextSpan(
                  text: eventTitle,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              top: 15,
              left: 10,
            ),
            Positioned(
              child: RichText(
                text: TextSpan(
                  text: location,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              top: 45,
              left: 10,
            ),
            Positioned(
              child: RichText(
                text: TextSpan(
                  text: dateTime,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              top: 75,
              left: 10,
            ),
            Positioned(
              child: RaisedButton(
                color: Color.fromRGBO(180, 40, 24, 1),
                onPressed: () {},
                child: RichText(
                  text: TextSpan(
                    text: "RSVP",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14
                    )
                  ),

                ),
              ),
              bottom: 6,
              left: 10,
            )
          ],
        ),
      ),
    );
  }
}

class ClubLogo extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Container(

      width: 100.0,
      height: 100.0,

      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/dsocMockLogo.png"),
        ),
      ),
    );
  }
}

