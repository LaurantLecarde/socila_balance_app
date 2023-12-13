import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
            children: [
              const Gap(300),
              Text('Ilova tilini tanlang',style: TextStyle(color: Colors.black,fontSize: 40)),
              const Gap(325),
              InkWell(child: Container(
                width: double.infinity,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xff002a86)
                ),
                child: Center(
                  child: Text(''),
                ),
              ))
            ],
        ),
      ),
    );
  }
}
