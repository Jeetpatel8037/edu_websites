import 'package:all_educastion_website/screens/AllEducastionSide.dart';
import 'package:all_educastion_website/screens/JavaPoint.dart';
import 'package:all_educastion_website/screens/Tutorialpoints.dart';
import 'package:all_educastion_website/screens/W3schools.dart';
import 'package:all_educastion_website/screens/Wikipedia.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const AllAducastionSide(),
        'Wikipedia': (context) => const Wikipedia(),
        'JavaPoint': (context) => const JavaPoint(),
        'Tutorialpoints': (context) => const Tutorialpoints(),
        'W3schools': (context) => const W3schools(),
      },
    ),
  );
}
