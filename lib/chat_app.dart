
import 'package:chat_app/grid_card.dart';
import 'package:flutter/material.dart';

class ChatApp extends StatefulWidget {
  const ChatApp({Key? key}) : super(key: key);

  @override
  _ChatAppState createState() => _ChatAppState();
}

class _ChatAppState extends State<ChatApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            color: Colors.grey,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: Colors.grey,
              ))
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Stack(
            children: [
              Container(
                alignment: Alignment(0.0, -0.80),
                height: 160,
                color: Colors.white,
                child: Text(
                  "Get Coaching",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Container(margin: EdgeInsets.fromLTRB(25, 50, 25, 0),height: 70,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(blurRadius: 2, color: Colors.grey)
                      ]),
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Container(padding:EdgeInsets.fromLTRB(25,15,5,5),
                            child: Text(
                              "YOU HAVE",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ) ,
                          Container(padding:EdgeInsets.fromLTRB(25,40,5,5),
                            child: Text("206",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),)],),
                      SizedBox(
                        width: 70,
                      ),
                      Container(
                        height: 50,
                        width: 90,
                        decoration: BoxDecoration(
                          color: Colors.greenAccent.withOpacity(0.6),
                          borderRadius: BorderRadius.circular(10),),
                        child: Center(
                            child: Text(
                          "Buy more",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.green),
                        )),
                      )
                    ],))],),
          SizedBox(
            height: 30),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "MY COACHES",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
                Text(
                  "VIEW PAST SESSIONS",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
                )
              ],
            ),
          ),
          SizedBox(height: 10,),
          GridView.count(crossAxisCount: 2,crossAxisSpacing: 2,mainAxisSpacing: 4,shrinkWrap: true,
          children: [
            GridCard(image:"assets/images/images (9).jpeg",name:"Alyx", time:"8 hours",status:"Available",
                cardIndex: 1),
            GridCard(image:"assets/images/images (3).jpeg",name:"Francisco",time:"3 hours",status:"Away",
                cardIndex: 2),
            GridCard(image:"assets/images/images (6).jpeg",name:"Jennifer",time:"1 hour",status:"Away",
                cardIndex: 3),
            GridCard(image:"assets/images/images (4).jpeg",name:"Joy",time:"9 hours",status:"Available",
                cardIndex: 4),
            GridCard(image:"assets/images/images (7).jpeg",name:"Stella",time:"4 hours",status:"Away",
                cardIndex: 5),
            GridCard(image:"assets/images/images (5).jpeg",name:"Maureen",time:"5 hours",status:"Available",
                cardIndex: 6),
          ],),
          SizedBox(height: 10,)
        ],
      ),
    );
  }
}