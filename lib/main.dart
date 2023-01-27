import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main(){
  runApp(_MyApp());
}
class _MyApp extends StatefulWidget {
  const _MyApp({Key? key}) : super(key: key);

  @override
  State<_MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<_MyApp> {
  final player = AudioPlayer();
  int n=1;
  Expanded fun(int n,Color color){
    return Expanded(
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(color),
          ),
          onPressed: () {
          player.play(AssetSource('note$n.wav'),);
        }, child: null,
        ),
        );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text('Play Music By Flutter',style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),),
        ),
        body:Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
                    fun(n=1,Colors.red),
                    fun(n=2,Colors.orange),
                    fun(n=3,Colors.green),
                    fun(n=4,Colors.lightBlue),
                    fun(n=5,Colors.yellow),
                    fun(n=6,Colors.pink),
                    fun(n=7,Colors.greenAccent),
            ],
          ),
        ),
      ),
    );
  }
}
// TextButton(
//   onPressed: () {
//     setState(() {
//       player.stop();
//     });
//   },
//   child: Text('Stop'),
// ),
// TextButton(
//   onPressed: () {
//     setState(() {
//       player.pause();
//     });
//   },
//   child: Text('Pause'),
// ),
// TextButton(
//   onPressed: () {
//     setState(() {
//       player.resume();
//     });
//   },
//   child: Text('Resume'),
// ),