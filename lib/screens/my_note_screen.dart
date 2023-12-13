import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:socila_balance_app/model/grid_page.dart';
import 'package:socila_balance_app/screens/add_note.dart';

class NoteScreen extends StatefulWidget {
  const NoteScreen({super.key});

  @override
  State<NoteScreen> createState() => _NoteScreenState();
}

class _NoteScreenState extends State<NoteScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: <Widget>[
              Tab(
                  text: 'Qaydlar',
              ),
                Tab(
                  text: 'Xabarlar',
                ),
              ],
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TabBarView(
              children:<Widget> [
                Center(
                  child: ListView.builder(
                    itemCount: myListTileModelList.length,
                    itemBuilder: (context, index){
                      final data = myListTileModelList[index];
                      return Column(
                        children: [
                          Container(
                            width: double.infinity,
                            decoration:BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color:const Color(0xff002a86)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("${data.name}",style: const TextStyle(color: Colors.white, fontSize: 20)),
                                  const Gap(5),
                                  Text("${data.desc}",style: const TextStyle(color: Colors.white, fontSize: 20)),
                                  const Gap(5),
                                  Text("${data.date}",style: const TextStyle(color: Colors.white, fontSize: 20)),
                                ],
                              ),
                            ),
                          ),
                          const Gap(5)
                        ],
                      );
                    },
                  )
                ),
                const Center(
                  child: Text('Nmadur Yozing')
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            shape: const CircleBorder(),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xff002a86),
                borderRadius: BorderRadius.circular(50)
              ),
                height: 50,
                width: 50,
                child: IconButton(
                   onPressed: (){
                     Navigator.of(context).push(CupertinoPageRoute(builder: (context)=> const AddNote()));
                   },
                    icon: const Icon(CupertinoIcons.add),color: Colors.white,)),
          ),
        ),
      );

  }
}
