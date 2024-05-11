import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.grey,
            title: const Center(child: Text('Lottery App', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Colors.white, fontStyle: FontStyle.italic),)),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Center(child: Text('Lottery winning number is 4')),
              const SizedBox(height: 15,),
              Container(
                height: 250,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.blue.withOpacity(.2),
                ),
                child: x ==4 ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.done_all, color: Colors.green, size: 50,),
                    SizedBox(height: 10,),
                    Text('Congratulations you have won the lottery \n your number is $x', textAlign: TextAlign.center,)
                  ],
                ) : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.error, color: Colors.red, size: 50,),
                    SizedBox(height: 10,),
                    Text('Better luck next time your number is $x \n try again', textAlign: TextAlign.center,)
                  ],
                )
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.blue,
            onPressed: (){
              x = random.nextInt(6);
              print(x);
              setState(() {

              });
            },
            child: const Icon(Icons.refresh, color: Colors.white,size: 35,),
          ),
        ),
      ),
    );
  }
}
