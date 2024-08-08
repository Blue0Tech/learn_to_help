import 'package:flutter/material.dart';

class CreditsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Credits'),
          backgroundColor: Colors.green[300],
        ),
        body: Container(
            child: ListView(
                padding: EdgeInsets.all(8.0),
                children: [
                  Center(child: Text('Credits',style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold
                  ))),
                  SizedBox(height:20.0),
                  Text('Bleeding 1st thumbnail: wikiHow, Inc',textAlign: TextAlign.center),
                  Text('Burns 1st thumbnail: International Skincare Network',textAlign: TextAlign.center),
                  Text('Choking 1st thumbnail: Healthjade',textAlign: TextAlign.center),
                  Text('CPR 1st thumbnail: Paul Kelly on LinkedIn',textAlign: TextAlign.center),
                  Text('Poisoning 1st thumbnail: Ben Butina on LinkedIn',textAlign: TextAlign.center),
                  Text('Sprains 1st thumbnail: The Center for Foot Care',textAlign: TextAlign.center),
                  Text('Bleeding 2nd thumbnail: Medsquirrel',textAlign: TextAlign.center),
                  Text('Burns 2nd thumbnail: Rosie Bell on Linkedin',textAlign: TextAlign.center),
                  Text('Choking 2nd thumbnail: Istituto di Studi Medicina Omeopatica',textAlign: TextAlign.center),
                  Text('CPR 2nd thumbnail: Owain Davies on Wikipedia',textAlign: TextAlign.center),
                  Text('Poisoning 2nd thumbnail: The Prop Gallery Limited',textAlign: TextAlign.center),
                  Text('Sprains 2nd thumbnail: Miles Callahan Orthopaedic Surgeon',textAlign: TextAlign.center),
                  Text('Bleeding tutorial: St John Ambulance',textAlign: TextAlign.center),
                  Text('Burns tutorial: Abraham the Pharmacist',textAlign: TextAlign.center),
                  Text('Choking tutorial: St John Ambulance',textAlign: TextAlign.center),
                  Text('CPR tutorial: Cincinnati Children\'s',textAlign: TextAlign.center),
                  Text('Poisoning tutorial: St John Ambulance',textAlign: TextAlign.center),
                  Text('Sprains tutorial: RafflesHospital',textAlign: TextAlign.center),
                  Text('Empty profile picture: Spoken Tutorial by IIT Bombay',textAlign: TextAlign.center)
                ]
            )
        )
    );
  }
}