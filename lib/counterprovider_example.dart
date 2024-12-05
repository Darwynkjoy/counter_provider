import 'package:flutter/material.dart';

class NewCounter extends StatefulWidget{
  @override
  State<NewCounter> createState()=>_Newcounterstate();
}
class _Newcounterstate extends State<NewCounter>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Counter"),centerTitle: true,),
      body: Column(
        children: [
          Text("count",style: TextStyle(fontSize: 25,color: Colors.black),),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children:[
              FloatingActionButton(onPressed: (){},child: Text("+"),),
              SizedBox(width: 20,),
              FloatingActionButton(onPressed: (){},child: Text("+"),),
            ]
          ),
        ],
      ),
    );
  }
}