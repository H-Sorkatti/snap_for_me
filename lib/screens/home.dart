import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:snap_for_me/config/themes/theme_provider.dart';
import 'package:snap_for_me/screens/about.dart';
import 'package:snap_for_me/widgets/ripple_animation.dart';
import 'package:flutter_icons/flutter_icons.dart';

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
        title: const Center(child: Text("طقطق لي")),
        actions: [
          TextButton.icon(
            icon: const Icon(FontAwesome5.lightbulb),
            label: const Text('About'),
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const AboutMe())),
          ),
          Switch(
              value: themeChange.darkTheme,
              onChanged: (bool value) {
                themeChange.darkTheme = value;
              })
        ],
      ),
      body: const SafeArea(
        child: RippleAnimation(),
      ),
    );
  }
}
