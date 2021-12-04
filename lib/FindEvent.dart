import 'package:flutter/material.dart';
import 'package:flutter_party_event/Animation/FadeAnimation.dart';

class FindEvent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(246, 248, 253, 1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        brightness: Brightness.light,
        leading: Icon(Icons.menu, color: Colors.black,),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage('assets/images/lantern-festival.jpg'),
                  fit: BoxFit.cover
                )
              ),
              child: Transform.translate(
                offset: Offset(15, -15),
                child: Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(width: 3, color: Colors.white),
                    shape: BoxShape.circle,
                    color: Colors.yellow[900]
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              FadeAnimation(1, Container(
                padding: EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search, color: Colors.grey,),
                    hintText: "Search Event",
                    hintStyle: TextStyle(color: Colors.grey)
                  ),
                ),
              )),
              SizedBox(height: 30,),
              FadeAnimation(1.2, makeItem(name: "Chiayi City International Band Festival",image: 'assets/images/band-festival.jpg', date: 17, month: "JAN", time: "12:00")),
              SizedBox(height: 20,),
              FadeAnimation(1.3, makeItem(name: "Taiwan Cycling Festival", image: 'assets/images/cycling.jpg', date: 1, month: "FEB", time: "06:00")),
              SizedBox(height: 20,),
              FadeAnimation(1.4, makeItem(name: "Pingxi Sky Lantern Festival", image: 'assets/images/lantern-festival.jpg', date: 26, month: "APR", time: "20:00")),
              SizedBox(height: 20,),
              FadeAnimation(1.5, makeItem(name: "Road to Ultra", image: 'assets/images/ultra.png', date: 11, month: "SEP", time: "18:00")),
              SizedBox(height: 20,),
              FadeAnimation(1.6, makeItem(name: "Taiwan International Balloon Festival", image: 'assets/images/ballon-festival.jpg', date: 14, month: "OCT", time: "15:00")),
              SizedBox(height: 20,),
              FadeAnimation(1.7, makeItem(name: "Christmaslan in New Taipei City", image: 'assets/images/christmas.jpg', date: 25, month: "DEC", time: "18:30")),
              SizedBox(height: 20,),
              FadeAnimation(1.8, makeItem(name: "2022 New Year's Eve Celebration", image: 'assets/images/new-year-eve.jpg', date: 31, month: "DEC", time: "22:00")),
              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }

  Widget makeItem({name, image, date, month, time}) {
    return Row(
      children: <Widget>[
        Container(
          width: 50,
          height: 200,
          margin: EdgeInsets.only(right: 20),
          child: Column(
            children: <Widget>[
              Text(date.toString(), style: TextStyle(color: Colors.blue, fontSize: 25, fontWeight: FontWeight.bold),),
              Text(month, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
            ],
          ),
        ),
        Expanded(
          child: Container(
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover
              )
            ),
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(.4),
                    Colors.black.withOpacity(.1),
                  ]
                )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(name, style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  Row(
                    children: <Widget>[
                      Icon(Icons.access_time, color: Colors.white,),
                      SizedBox(width: 10,),
                      Text(time, style: TextStyle(color: Colors.white),)
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}