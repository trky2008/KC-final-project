import  'package:flutter/material.dart';
import 'package:flutter_application_2/model.dart';


void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  var Lists = [
    Model(name: "Mohammed", year: 22, location: "Aljahra"),
    Model(name: "Yousef", year: 10, location: "Sabah-Alsaleem"),
    Model(name:  "Faisal", year: 15, location: "Alqusur"),
    Model(name: "Nasir", year: 19, location:"Salibih" ),
    Model(name: "Nayif", year: 30, location: "Alfrwania"),
   Model(name: "Suhayb", year: 20, location: "Aleabdali"),
    Model(name: "Nawaf", year: 25, location: "Kabid"),
    Model(name: "Abdallah", year: 35, location: "Alwafrah"),
     Model(name: "Adil", year: 40, location: "Khaytan"),
     Model(name: "Mashari", year: 44, location: "Salwaa")
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("List"),
        ),
        body: Center(
          child: ListView.builder(
              itemCount: Lists.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(Lists[index].name),
                  subtitle: Text("${Lists[index].year} years"),
                  trailing: Text(Lists[index].location),
                );
              }),
        ),
      ),
    );
  }
}

