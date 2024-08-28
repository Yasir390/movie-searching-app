import 'package:flutter/material.dart';
import 'package:movie_app_paulo/providers/movie_provider.dart';
import 'package:provider/provider.dart';
import 'home_page.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (BuildContext context) => MovieProvider() ,
  child:const  MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home:const HomePage(),
    );
  }
}