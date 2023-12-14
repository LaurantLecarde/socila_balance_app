import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DeleteProfilePage extends StatefulWidget {
  const DeleteProfilePage({super.key});

  @override
  State<DeleteProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<DeleteProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
                color: Colors.blue,
              ),
              width: double.infinity,
              height: 200,
            ),
            const Gap(10),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: const Color(0xff002a86),
                borderRadius: BorderRadius.circular(60),
              ),
              child: const Icon(CupertinoIcons.person_fill,color: Colors.white,size: 50),
            ),
            const Gap(30),
            Padding(padding: const EdgeInsets.only(
              left: 30,
              right: 30
            ),child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  decoration: InputDecoration(
                      hintText: 'Samandar',
                      filled: true,
                      fillColor:const Color(0xb6ffffff) ,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(45),
                          borderSide: const BorderSide(color: Colors.black,width: 2)
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(45),
                          borderSide: const BorderSide(color:Colors.black,width: 2)
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(45),
                          borderSide: const BorderSide(color: Colors.black,width: 2)
                      )
                  ),
                ),
                const Gap(10),
                TextField(
                  decoration: InputDecoration(
                      hintText: "+998 (90) 173-90-93",
                      filled: true,
                      fillColor: const Color(0xb6ffffff),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(45),
                          borderSide: const BorderSide(color: Colors.black,width: 2)
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(45),
                          borderSide: const BorderSide(color:Colors.black,width: 2)
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(45),
                          borderSide: const BorderSide(color: Colors.black,width: 2)
                      )
                  ),
                ),
                const Gap(10),
                InkWell(
                  onTap: (){},
                  child: Container(
                    width: double.infinity,
                    height: 55,
                    decoration: BoxDecoration(
                        color:  const Color(0xff002a86),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: const Center(child: Text("Saqlash",style: TextStyle(color: Colors.white),),),
                  ),
                ),
                const Gap(10),
                InkWell(
                  onTap: (){},
                  child: Container(
                    width: 200,
                    height: 55,
                    decoration: BoxDecoration(
                        color:  Colors.red,
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: const Center(child: Text("Akkauntni o'chirish",style: TextStyle(color: Colors.white),),),
                  ),
                )
              ],
            ),)
          ],
        ),
      ),
    );
  }
}

