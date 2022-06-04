import 'package:flutter/material.dart';
import 'MyNotes.dart';


class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Scaffold(
      backgroundColor: Color.fromRGBO(255, 251, 251, 1),
      body:Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(),
              Image.asset('assets/images/note.png'),
              SizedBox(
                height: 60,
                width: 300,
                child: RaisedButton(
                  color:Color.fromARGB(255, 51, 52, 116),
                  onPressed:() {
                   Navigator.push(context,MaterialPageRoute(builder:(_)=>myNotes())); 
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius:BorderRadius.circular(25) ),
                  child:Text('Get Started', 
                  style: TextStyle(color:Colors.white),
                  ),
                  ),
              ),

          ],),
        ),
      )
    );
    
  }
}