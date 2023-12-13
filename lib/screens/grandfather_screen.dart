import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:socila_balance_app/model/grid_page.dart';

class GrandfatherScreen extends StatefulWidget {
  const GrandfatherScreen({super.key});

  @override
  State<GrandfatherScreen> createState() => _GrandfatherScreenState();
}

class _GrandfatherScreenState extends State<GrandfatherScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Gap(150),
            Image.asset('assets/img/img_3.png',width: 800,height: 50,),
            const Gap(50),
            Expanded(
              child: ListView.builder(
                itemCount: myListViewList.length,
                itemBuilder: (context, index){
                  final data = myListViewList[index];
                  return Column(
                    children: [
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xFFDFEEFA)
                        ),
                        child:Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                      width: 220,
                                      child: Text("${data.name}",style: const TextStyle(color: Colors.black, fontSize: 17))),
                                  const Gap(5),
                                  SizedBox(width: 220,child: Text("${data.desc}",style: const TextStyle(color: Colors.grey, fontSize: 13))),
                                  const Gap(10),
                                  InkWell(
                                    onTap: (){},
                                    child: Container(
                                      height: 50,
                                      width: MediaQuery.of(context).size.width /3,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        color: Colors.white
                                      ),
                                      child: const Center(child: Text("Ko'proq",style: TextStyle(color: Colors.blue,fontSize: 20))),
                                    ),
                                  )
                                ],
                              ),
                              const Gap(20),
                              Image.asset('${data.image}',height: 100,width: 100,)
                            ],
                          ),
                        ),
                      ),
                      const Gap(10)
                    ],
                  );
                },
              ),
            ),
            // Text('sad sad asd')
          ],
        ),
      ),
    );
  }
}
