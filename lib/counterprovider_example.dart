import 'package:counter_provider/counterprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NewCounter extends StatefulWidget{
  @override
  State<NewCounter> createState()=>_Newcounterstate();
}
class _Newcounterstate extends State<NewCounter>{
  @override
  Widget build(BuildContext context){
    final newcounter=Provider.of<Counterprovider>(context);
    return Scaffold(
      appBar: AppBar(title: Text("Counter"),centerTitle: true,),
      body: Column(
        children: [
          Text("${newcounter.count}",style: TextStyle(fontSize: 25,color: Colors.black),),
          Row(mainAxisAlignment: MainAxisAlignment.center,
          
            children:[
              FloatingActionButton(onPressed: (){
              newcounter.increment();
              },child: Text("+"),),
              SizedBox(width: 20,),
              FloatingActionButton(onPressed: (){
                newcounter.decrement();
              },child: Text("-"),),
            ]
          ),
        ],
      ),
    );
  }
}