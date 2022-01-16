// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:snap_for_me/config/themes/theme_provider.dart';
import 'package:snap_for_me/screens/about.dart';
import 'package:snap_for_me/widgets/ripple_animation.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "طقطق لي",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        leading: Center(
          child: GestureDetector(
            child: themeChange.darkTheme
                ? const FaIcon(
                    FontAwesomeIcons.lightbulb,
                  )
                : const FaIcon(
                    FontAwesomeIcons.solidLightbulb,
                  ),
            onTap: () {
              themeChange.darkTheme = themeChange.darkTheme ? false : true;
            },
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Center(
              child: GestureDetector(
                child: const FaIcon(
                  FontAwesomeIcons.questionCircle,
                ),
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const AboutMe())),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: const <Widget>[
            RippleAnimation(),
          ],
        ),
      ),
    );
  }
}
