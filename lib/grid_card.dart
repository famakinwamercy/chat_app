import 'package:flutter/material.dart';

class GridCard extends StatelessWidget {
  const GridCard(
      {Key? key,
      required this.name,
      required this.status,
      required this.cardIndex,
      required this.image,
      required this.time})
      : super(key: key);
  final String name;
  final String status;
  final int cardIndex;
  final String image;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      elevation: 7.0,
      child: Column(
        children: [
          SizedBox(height: 8),
          Stack(children: [
            Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.green,
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.cover),
                )),
            Container(
              margin: EdgeInsets.only(left: 42),
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: status == "Away" ? Colors.amber : Colors.green,
                border: Border.all(color: Colors.white, width: 1.0),
              ),
            ),
          ]),
          SizedBox(height: 8),
          Text(
            name,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black),
          ),
          SizedBox(
            height: 5,
          ),
          RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: "Available for\n the next ",
                  style: TextStyle(fontSize:10,color: Colors.grey)),
              TextSpan(
                  text: time,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,fontSize: 10, color: Colors.black))
            ]),
          ),
          SizedBox(
            height: 5,
          ),
          Expanded(
              child: Container(
            width: 175,
            decoration: BoxDecoration(
                color: status == "Away" ? Colors.grey : Colors.green,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12))),
            child: Center(
                child: Text(
              "Request",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )),
          ))
        ],
      ),
    );
  }
}
