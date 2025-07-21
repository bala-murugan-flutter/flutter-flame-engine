import 'package:flutter/material.dart';
class Room extends StatefulWidget {
  const Room({super.key});

  @override
  State<Room> createState() => _RoomState();
}

class _RoomState extends State<Room> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
        image: DecorationImage(
        image: AssetImage('assets/Room.jpg'),
        fit: BoxFit.cover,),),
        child: Scaffold(
          backgroundColor:Colors.transparent,
          body:Center(
            child: Column(children: <Widget>[
              const SizedBox(height:60,),
              Image.asset('assets/logo.png',height:122,),
              const Text('Select Game',style:TextStyle(fontSize:30.0,fontFamily: 'mafia',color:Colors.white),),
              const SizedBox(height:10,),
              Container(
                color:Colors.transparent,height:560,width:372,child:ListView(children: <Widget>[
                  Container(height:90,color:Colors.grey,child:Row(children: <Widget>[
                      Image.asset('assets/carom.png'),Image.asset('assets/11.png',height:71,),
                    ],),),
                const SizedBox(height:20,),
                Container(height:90,color:Colors.grey,child:Row(children: <Widget>[
                  Image.asset('assets/carom.png'),Image.asset('assets/22.png',height:71,),
                ],),),


                const SizedBox(height:20,),
                Container(height:90,color:Colors.grey,child:Row(children: <Widget>[
                  Image.asset('assets/freefire.png'),Image.asset('assets/11.png',height:71,),
                ],),),



                const SizedBox(height:20,),
                Container(height:90,color:Colors.grey,child:Row(children: <Widget>[
                  Image.asset('assets/freefire.png'),Image.asset('assets/22.png',height:71,),
                ],),),

              ],),
              )







            ] ,),

          ),
    ));
  }
}
