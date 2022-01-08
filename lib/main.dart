// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:snap_for_me/about.dart';
import 'package:snap_for_me/ripple_animation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: const MyHomePage(title: 'طقطق لي'),
      initialRoute: '/',
      routes: {
        '/about': (context) => const AboutMe(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("طقطق لي")),
        actions: [
          TextButton(
            child: Text('About'),
            onPressed: () => Navigator.pushNamed(context, '/about'),
          ),
        ],
      ),
      body: SafeArea(
        child: RippleAnimation(),
      ),
    );
  }
}
