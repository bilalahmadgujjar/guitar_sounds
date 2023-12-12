import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  XylophoneApp({Key? key}) : super(key: key);

  void sound(int m) {

    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/note$m.wav"),
      autoStart: true,
      showNotification: true,
    );


  }

  Widget buildKey({Color? color, int? n}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          sound(n!);
        },
        style: TextButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: color ?? Colors.teal,
        ),
        child: Text('Click for audio $n'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: const Text('XYLOPHONE'),
          centerTitle: true,
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/bg1.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                //for (int i = 1; i <= 7; i++)
                  //buildKey(color: Colors.black45, n: i),
                buildKey(color:Colors.black45, n:1),
                buildKey(color:Colors.red,n:2),
                buildKey(color:Colors.black45,n:3),
                buildKey(color:Colors.blue, n:4),
                buildKey(color:Colors.white,n:5),




              ],
            ),
          ),
        ),
      ),
    );
  }
}
