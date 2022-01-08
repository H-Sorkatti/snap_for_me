import 'package:audioplayers/audioplayers.dart';

Future<void> playAudio(String name) async {
  AudioCache audioPlayer = AudioCache();

  if (name == 'snap') {
    audioPlayer.play('sfx-hands13.mp3');
  } else {
    audioPlayer.play('stop_it_driver.mp3');
  }
}
