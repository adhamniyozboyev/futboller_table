import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyTeam(),
  ));
}

class MyTeam extends StatefulWidget {
  const MyTeam({Key? key}) : super(key: key);

  @override
  State<MyTeam> createState() => _MyTeamState();
}

class _MyTeamState extends State<MyTeam> {
  List page = [
    'Paulo Dybala',
    'Lionel Messi',
    'Cristiano Ronaldo',
    'Neymar Junior',
    'Muhammad Salah',
    'Kylian Mbappe'
  ];
  int index = 0;
  List table = [
    Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
            height: 580,
            child: Image.asset(
              'image/dybala.jpg',
              fit: BoxFit.contain,
            )),
        Text(
          'Country:  Argentina\nTeam:  Juventus\nAge: 27\nCost: 70 mln euro',
          style: TextStyle(color: Colors.blue, fontSize: 20),
        )
      ],
    ),
    Column(
      children: [
        Container(
            height: 580,
            child: Image.asset(
              'image/messi.jpg',
              fit: BoxFit.contain,
            )),
        Text(
          'Country: Argentina\nTeam:  Barcelona\nAge: 35\nCost: 100 mln euro',
          style: TextStyle(color: Colors.blue, fontSize: 20),
        )
      ],
    ),
    Column(
      children: [
        Container(
            height: 580,
            child: Image.asset(
              'image/ronaldu.jpg',
              fit: BoxFit.contain,
            )),
        Text(
          'Country:  Portugalia\nTeam: Man Utd\nAge:  37\nCost: 110 mln euro',
          style: TextStyle(color: Colors.blue, fontSize: 20),
        )
      ],
    ),
    Column(
      children: [
        Container(
            height: 580,
            child: Image.asset(
              'image/neymar.jpg',
              fit: BoxFit.contain,
            )),
        Text(
          'Country:  Brazilia\nTeam:  PSG\nAge: 32\nCost: 90 mln euro',
          style: TextStyle(color: Colors.blue, fontSize: 20),
        )
      ],
    ),
    Column(
      children: [
        Container(
            height: 580,
            child: Image.asset(
              'image/salah.jpg',
              fit: BoxFit.contain,
            )),
        Text(
          'Country:  Egypt\nTeam:  Liverpul\nAge:  31\nCost:  80 mln euro',
          style: TextStyle(color: Colors.blue, fontSize: 20),
        )
      ],
    ),
    Column(
      children: [
        Container(
            height: 580,
            child: Image.asset(
              'image/mbappe.jpg',
              fit: BoxFit.contain,
            )),
        Text(
          'Country:  France\nTeam:  PSG\nAge: 25\nCost: 120 mln euro',
          style: TextStyle(color: Colors.blue, fontSize: 20),
        )
      ],
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(page[index%6])),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          table[index % 6],
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                  onPressed: () {
                    setState(() {
                      if(index>0){
                        index--;
                      }
                    });
                  },
                  child: Icon(
                    Icons.arrow_circle_left,
                    size: 45,
                  )),
              Text(
                'Order number: $index',
                style: TextStyle(color: Color.fromARGB(255, 165, 18, 136), fontSize: 35),
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      index++;
                      if(index==table.length){
                        index=0;
                      }
                       
                      
                    });
                  },
                  child: Icon(
                    Icons.arrow_circle_right,
                    size: 45,
                  ))
            ],
          )
        ],
      ),
    );
  }
}
