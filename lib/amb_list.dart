// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AmbList extends StatefulWidget {
  const AmbList({Key? key}) : super(key: key);

  @override
  State<AmbList> createState() => _AmbListState();
}

class _AmbListState extends State<AmbList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              color: Colors.indigo[100],
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  '''Ambulance 1
                
          Type- BLS
          Mob.no.-8708241148
          Services- Basic life support,
                            initial life support''',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              color: Colors.indigo[100],
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  '''Ambulance 2
                
          Type- ALS
          Mob.no.-8168744127
          Services- Advanced care for critical
                            patients''',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              color: Colors.indigo[100],
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  '''Ambulance 3
                
          Type- PTV
          Mob.no.-9506592646
          Services- transports patients to and
          fro from the medical centers and        
          cater to non-urgent care''',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              color: Colors.indigo[100],
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  '''Ambulance 4
                
          Type- BLS
          Mob.no.-8767862192
          Services- Basic life support,
                            initial life support''',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              color: Colors.indigo[100],
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  '''Ambulance 5
                
          Type- ALS
          Mob.no.-8604609391
          Services- Advanced care for critical 
                            patients''',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
