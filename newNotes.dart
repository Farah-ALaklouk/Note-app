import 'package:flutter/material.dart';
import 'package:flutter_material_color_picker/flutter_material_color_picker.dart';
import 'package:note_app/myNotes.dart';
//import 'package:note_app/sqflite.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'database/note_getx_controller.dart';
 import 'package:provider/provider.dart';
class newNotes extends StatefulWidget {
  
  const newNotes({Key? key}) : super(key: key);

  @override
  State<newNotes> createState() => _newNotesState();
}

class _newNotesState extends State<newNotes> {
  Color _selectedColor = Color(0xff2196f3);
 // SqlDb sqlDb = SqlDb();
  GlobalKey<FormState> formState = GlobalKey();
  TextEditingController note = TextEditingController();
  TextEditingController title = TextEditingController();
  
 // void restart() {
   // setState(() {});
  //}

  //@override
  //void initState() {
    //super.initState();
    //titleTextController = TextEditingController();
    //descriptionTextController = TextEditingController();
  //}

  //@override
  //void dispose() {
    //titleTextController.dispose();
    //descriptionTextController.dispose();
    //super.dispose();
  //}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 40, 35, 109),
        title: Text('New Notes'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              showModalBottomSheet(
                  backgroundColor: Color.fromARGB(255, 40, 35, 109),
                  context: context,
                  builder: (context) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListTile(
                            leading: Icon(
                              Icons.share,
                              color: Colors.black,
                            ),
                            title: Text('Share with your friends',
                                style: TextStyle(color: Colors.white)),
                            shape: CircleBorder(),
                            onTap: () {}),
                        ListTile(
                         //  title:Text("${notes[i]['title']}"),
                          // subtitle: Text("${notes[i]['note']}"),
                            leading: Icon(
                              Icons.delete,
                              color: Colors.black,
                            ),
                            title: Text('Delete',
                                style: TextStyle(color: Colors.white)),
                            shape: CircleBorder(),
                            onTap: (){
                              // async
                             // int response= await sqlDb.deleteData(
                              ///  "DELETE FROM notes WEHRE id =${notes[i]['id']}");
                             // if(response>0){
                               // notes.removeWhere((element)=>element['id']==notes[i]['id']);
                              }

                            ),
                        ListTile(
                            leading: Icon(
                              Icons.control_point_duplicate_outlined,
                              color: Colors.black,
                            ),
                            title: Text('Duplicate',
                                style: TextStyle(color: Colors.white)),
                            shape: CircleBorder(),
                            onTap: () {}),
                        MaterialColorPicker(
                          colors: fullMaterialColors,
                          selectedColor: _selectedColor,
                          onColorChange: (color) => setState(() => {
                                print("object ${color.toString()}"),
                                print("ot ${color}"),
                                _selectedColor = color,
                              }),
                          spacing: 5,
                        )
                      ],
                    ) ;        
                }
                );
          
            }
          ),
          IconButton(
            icon: Icon(Icons.check),
            onPressed: () {
              
            }),//async {
            //  int response = await sqlDb.insertData('''
//INSERT INTO notes('note' , 'title' )
//VALUES (${note.text},${title.text})

//''');
           //   if (response > 0) {
              //  Navigator.of(context).pushAndRemoveUntil(
               //     MaterialPageRoute(builder: (context) => myNotes()),
               //     (rout) => false);
           //   }
          //  },
         // ),
     // ],
          
         
    ]
    ),
    
      body: Container(
        child: ListView(
          children: [
            Form(
                key: formState,
                child: Column(
                  children: [
                    TextFormField(
                      controller: title,
                      decoration: InputDecoration(hintText: "Note title"),
                    ),
                    TextFormField(
                      controller: note,
                      decoration: InputDecoration(hintText: "Type Somthing..."),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
//Future saveAccount() async {
  //  bool inserted =
    //    await Provider.of<AccountChangeNotifier>(context, listen: false)
      //      .create(note);
    //if (inserted) {

      //Navigator.pop(context);
    //} else {}
  //}

 // Note get note {
   // Note note = Note();
    //note.title = titleTextController.text;
    //note.description = descriptionTextController.text;
    //note.color = noteColor.value;

    //return note;
 // }

  //void clear() {
    //titleTextController.text = '';
    //descriptionTextController.text = '';
  //}


}
