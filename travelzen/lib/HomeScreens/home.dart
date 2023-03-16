import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeDirect extends StatefulWidget {
  const HomeDirect({super.key});

  @override
  State<HomeDirect> createState() => _HomeDirectState();
}

class _HomeDirectState extends State<HomeDirect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        shadowColor: Colors.black,
        backgroundColor: Color.fromARGB(255, 3, 87, 155),
        title: Center(child: Text("TravelZone")),
         actions: <Widget>[
    IconButton(
      icon: Icon(
        Icons.account_circle_rounded,
        color: Colors.white,
      ),
      onPressed: () {
        // do something
      },
    )
  ],
      ),
      
      body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/back.png"),
      fit: BoxFit.fill)),
    
    child: Column(
      children: [
        SizedBox(height: 50,),
        Container(
          child: Row(children: [
            SizedBox(width: 08,),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/spots');
              },
              child: Container(
                height: 200,
              width: 200,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/images/shogran.jpg"),
                fit: BoxFit.cover),
              border: Border.all(
             color: Colors.black,
             width: 2.0,
                ),
                boxShadow: [
            BoxShadow(
              color: Colors.black ,
              blurRadius: 16.0,
              offset: Offset(2.0,2.0))],
               borderRadius: BorderRadius.circular(10.0),
           gradient: LinearGradient(
             colors: [
              Colors.indigo,
              Colors.blueAccent
             ]
           ),
              ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/hotels');
              },
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/images/hotel.png"),
                  fit: BoxFit.fill),
                  border: Border.all(
             color: Colors.black,
             width: 2.0,
                ),
                boxShadow: [
            BoxShadow(
              color: Colors.black ,
              blurRadius: 16.0,
              offset: Offset(2.0,2.0))],
               borderRadius: BorderRadius.circular(10.0),
           gradient: LinearGradient(
             colors: [
              Colors.indigo,
              Colors.blueAccent
             ]
           ),
              ),
              ),
            )
          ]),
        ),
        SizedBox(height: 10,),
        Container(
            child: Row(
            children: [
              SizedBox(width: 08,),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/vehicles');
                },
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/images/cars.png", ),
                    fit: BoxFit.fill),
                    border: Border.all(
             color: Colors.black,
             width: 2.0,
                ),
                boxShadow: [
            BoxShadow(
              color: Colors.black ,
              blurRadius: 16.0,
              offset: Offset(2.0,2.0))],
               borderRadius: BorderRadius.circular(10.0),
           gradient: LinearGradient(
             colors: [
              Colors.indigo,
              Colors.blueAccent
             ]
           ),
                 ),
                ),
              ),
              SizedBox(width: 10,),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/rest');
                },
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(image: 
                  DecorationImage(image: AssetImage("assets/images/khana5.jpg"),fit: BoxFit.cover
                  ),
                  border: Border.all(
             color: Colors.black,
             width: 2.0,
                ),
                boxShadow: [
            BoxShadow(
              color: Colors.black ,
              blurRadius: 16.0,
              offset: Offset(2.0,2.0))],
               borderRadius: BorderRadius.circular(10.0),
           gradient: LinearGradient(
             colors: [
              Colors.indigo,
              Colors.blueAccent
             ]
           ),
                  
                  ),
                ),
              )
            ],
            ),
        ),
        SizedBox(height: 20,),
        InkWell(
          onTap: () {Navigator.pushNamed(context,  '/maponly');},
          child: Container(
            height: 300,
            width: 410,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/images/map.jpg'),
              fit: BoxFit.cover),
              border: Border.all(
             color: Colors.black,
             width: 2.0,
                ),
                boxShadow: [
            BoxShadow(
              color: Colors.black ,
              blurRadius: 16.0,
              offset: Offset(2.0,2.0))],
               borderRadius: BorderRadius.circular(10.0),
           gradient: LinearGradient(
             colors: [
              Colors.indigo,
              Colors.blueAccent
             ]
           ),
            ),
          ),
        ),
      ],
    ),
    ),
    );
  }
}