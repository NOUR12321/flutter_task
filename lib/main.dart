// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task/screens/home.dart';
import 'package:task/screens/provider_home.dart';
import 'package:task/screens/sofa_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: MultiProvider(providers: [ChangeNotifierProvider(create: (context)=>ProviderHome())],
      child: const Home()),
    );
  }
  
}
