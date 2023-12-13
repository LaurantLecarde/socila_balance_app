import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:socila_balance_app/model/grid_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            const Gap(90),
            Image.asset('assets/img/img_3.png',width: 155,height: 85,),
            const Gap(70),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 1/1.1
                ),
                itemCount: myModelList.length,
                itemBuilder: (context, index){
                  final data = myModelList[index];
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: 2,
                        color: Colors.black
                      )
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset("${data.image}",height: 150,width: 150,),
                        Text('${data.name}')
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        )
      ),
    );
  }
}
