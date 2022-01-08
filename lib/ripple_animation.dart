// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:snap_for_me/audio_player.dart';

class RippleAnimation extends StatefulWidget {
  const RippleAnimation({Key? key}) : super(key: key);

  @override
  _RippleAnimationState createState() => _RippleAnimationState();
}

class _RippleAnimationState extends State<RippleAnimation>
    with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      lowerBound: 0.5,
      duration: Duration(seconds: 3),
    )..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Positioned(
          width: 500,
          height: 500,
          top: 1,
          child: _rippleButton(text: 'طقطقة', audioName: 'snap'),
        ),
        Positioned(
          width: 500,
          height: 500,
          bottom: 1,
          child: _rippleButton(text: 'قرصة يا معلم', audioName: 'stop_the_bus'),
        ),
      ],
    );
  }

  Widget _rippleButton({required String text, required String audioName}) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        AnimatedBuilder(
          animation:
              CurvedAnimation(parent: _controller, curve: Curves.decelerate),
          builder: (context, child) {
            return Stack(
              alignment: Alignment.center,
              children: <Widget>[
                _controller.value >= 0.4
                    ? _buildContainer(300 * _controller.value)
                    : SizedBox.shrink(),
                _controller.value >= 0.4
                    ? _buildContainer(350 * _controller.value)
                    : SizedBox.shrink(),
              ],
            );
          },
        ),
        Container(
          alignment: Alignment.center,
          width: 200.0,
          height: 200.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: RawMaterialButton(
            onPressed: () {
              playAudio(audioName);
            },
            elevation: 10.0,
            shape: CircleBorder(),
            child: Text(
              text,
              style: Theme.of(context).textTheme.headline5,
            ),
            fillColor: Colors.red,
            constraints: BoxConstraints.expand(),
          ),
        ),
      ],
    );
  }

  Widget _buildContainer(double radius) {
    return Container(
      width: radius,
      height: radius,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.red.withOpacity(1 - _controller.value),
      ),
    );
  }
}
