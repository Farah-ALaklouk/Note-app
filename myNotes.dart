import 'package:flutter/material.dart';
//import 'package:note_app/sqflite.dart';
import 'newNotes.dart';

class myNotes extends StatefulWidget {
  const myNotes({Key? key}) : super(key: key);

  @override
  State<myNotes> createState() => _myNotesState();
}

class _myNotesState extends State<myNotes> {
 // SqlDb sqlDb = SqlDb();
  bool isloading = true;
  List notes = [];
  Future readData() async {
  // List<Map> response = await DBProvider.raedData("SELECT * FROM notes");
 //  notes.addAll(response);
   isloading =false;
   if (this.mounted){
       setState(() {
         
       });
   }
  
  }
  @override
  void initSate(){
  readData();
  super.initState();


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 40, 35, 109),
          title: Text(
            'My Notes',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Container(
          child: ListView(
            children: [
             // FutureBuilder(
                //  future: readData(),
                //  builder: (BuildContext context,
                  //    AsyncSnapshot<List<Map>> snapshot) {
                    //if (snapshot.hasData) {
                        ListView.builder(   
                          itemCount: notes.length,
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, i) {
                            return Card(
                                child: ListTile(
                              title: Text("${notes[i]['title']}"),
                              subtitle: Text("${notes[i]['note']}"),
                            ));
                          }
                        )
                  //  }
               //     return Center(child: CircularProgressIndicator());
                 // })
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => newNotes()));
          },
        ));
  }
}
