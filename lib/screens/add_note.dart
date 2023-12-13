import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:socila_balance_app/screens/my_note_screen.dart';

class AddNote extends StatefulWidget {
  const AddNote({super.key});

  @override
  State<AddNote> createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              onTap: (){
                Navigator.of(context).push(CupertinoPageRoute(builder: (context)=> const NoteScreen()));
              },
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: const  Color(0xff002a86),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: const Icon(CupertinoIcons.checkmark_alt,color: Colors.white),
              ),
            ),
          )
        ],
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                color: const  Color(0xff002a86),
                borderRadius: BorderRadius.circular(10)
            ),
            child: Center(
              child: IconButton(
                onPressed: (){Navigator.of(context).pop();},
                icon: const Icon(CupertinoIcons.back,color: Colors.white,),
              ),
            ),
          ),
        ),
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Sarlavha',
                  hintStyle: TextStyle(color: Colors.grey,fontSize: 28)
                ),
              ),
              Expanded(child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Nmadur yozing...',
                    hintStyle: TextStyle(color: Colors.grey,fontSize: 20)
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
