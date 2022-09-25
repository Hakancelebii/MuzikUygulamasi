import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/src/audio_cache.dart';

void main() {
  runApp( MaterialApp(
    home: Scaffold(
      body: Xyapp(),
    ),
  ));
}

class Xyapp extends StatelessWidget {
  const Xyapp({Key? key}) : super(key: key);

  void PlaySound(soundnumber){
    final AudioCache player = AudioCache();
    player.play('note$soundnumber.wav');
  }
  Expanded BuildKey({ required Color color ,required  int sound}){
    return Expanded(
      child: ElevatedButton(child:Text("",style:  TextStyle(color: Colors.white),) ,onPressed: (){

        PlaySound(sound);
      },style: ElevatedButton.styleFrom(backgroundColor: color),),
    );
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          BuildKey(color: Colors.red,sound: 1),
          BuildKey(color: Colors.orange,sound: 2),
          BuildKey(color: Colors.teal,sound: 3),
          BuildKey(color: Colors.blue,sound: 4),
          BuildKey(color: Colors.pink,sound: 5),
          BuildKey(color: Colors.grey,sound: 6),
          BuildKey(color: Colors.yellow,sound: 7),


        ],
      ),
    );
  }
}



