// ignore_for_file: prefer_const_literals_to_create_immutables
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_linkify/flutter_linkify.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('About')),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              Text(
                "Made by Hassan Sorkatti",
                style: Theme.of(context).textTheme.headline6,
              ),
              SizedBox(height: 50),
              Linkify(
                text: 'https://github.com/H-Sorkatti',
                onOpen: (link) => launch('https://github.com/H-Sorkatti'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
