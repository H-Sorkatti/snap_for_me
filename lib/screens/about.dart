// ignore_for_file: prefer_const_literals_to_create_immutables
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_linkify/flutter_linkify.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: FaIcon(FontAwesomeIcons.angleLeft),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Center(
          child: Text(
            "شنو هو طقطق لي",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "طقطق لي",
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              SizedBox(height: 40),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "طقطق لي تطبيق عشان يساعد الناس الما بتعرف تتطقطق اصابعينها عشان تنبه الناس زي مثلا : ",
                  textDirection: TextDirection.rtl,
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "* لو نازل او نازلة من الحافلة وعايز تطقطق للكمساري.",
                  textDirection: TextDirection.rtl,
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "* لو عايز تلفت ليك زول",
                  textDirection: TextDirection.rtl,
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              SizedBox(height: 80),
              Column(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "التطبيق شاركو في عملو : ",
                      textDirection: TextDirection.rtl,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  SizedBox(height: 30),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "حسن سوركتي",
                      textDirection: TextDirection.rtl,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  Linkify(
                    linkStyle: Theme.of(context).textTheme.headline6,
                    text: 'https://github.com/H-Sorkatti',
                    onOpen: (link) => launch('https://github.com/H-Sorkatti'),
                  ),
                  SizedBox(height: 30),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "علي الهاشمي",
                      textDirection: TextDirection.rtl,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  Linkify(
                    linkStyle: Theme.of(context).textTheme.headline6,
                    text: 'https://github.com/alilibx',
                    onOpen: (link) => launch('https://github.com/alilibx'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
