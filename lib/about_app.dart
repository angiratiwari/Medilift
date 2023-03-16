// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AboutApp extends StatefulWidget {
  const AboutApp({Key? key}) : super(key: key);

  @override
  State<AboutApp> createState() => _AboutAppState();
}

class _AboutAppState extends State<AboutApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[300],
        title: Text('A B O U T', style: TextStyle(fontSize: 15)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(
          ''' 
        MEDILIFT -an ambulance booking app. 
        
We provide the reliable and fast services that is required at the time of need.
Select the best Ambulance provider at the most economical price.
Choose from the variety of options-
Oxygen, Ventilator, Paramedics and body freezer. 
The ambulances are equipped with advanced equipments that include car seats, stretchers, infusion pumps and stretchers for patients.
We serve 24 hours a day  including  public holidays and festivals.
Our team is trained for various scenarios and emergencies that may arise on the job.
We aim to provide medical expertise and care as well as transportation to the customers in the need of help.
 
        
        FEATURES-
        - user friendly UI
        - Map research options
        - No Advertisement  
       ''',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.indigo),
        ),
      ),
    );
  }
}
