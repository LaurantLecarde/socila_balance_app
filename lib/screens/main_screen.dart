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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.width / 1.4,),
              const Text('Ilova tilini tanlang',
                  style: TextStyle(color: Colors.black, fontSize: 30)),
              SizedBox(height: MediaQuery.of(context).size.width / 1.5,),
              InkWell(
                  onTap: () {
                    _showActionSheet("Sizning maxfiyligingiz biz uchun muhim. Shaxsiy ma'lumotlaringizni qanday qayta  ishlashimiz haqida qisqacha ma'lumot  beramiz. Tafsilotlarni bizning maxfiylik  siyosatimizda topishingiz mumkin. Sizning  ishonchingiz biz uchun muhim !");
                  },
                  child: Container(
                    width: double.infinity,
                    height: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color(0xff002a86)),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/img/img_1.png',
                            width: 40,
                            height: 25,
                          ),
                          const Gap(5),
                          const Text("O'zbekcha",
                              style: TextStyle(color: Colors.white, fontSize: 20))
                        ],
                      ),
                    ),
                  )),
              const Gap(20),
              InkWell(
                  onTap: () {
                    _showActionSheet("Ваша конфиденциальность важна для нас. Мы дадим вам краткое описание того, как мы обрабатываем ваши персональные данные. Подробности вы можете найти в нашей политике конфиденциальности. Нам важно Ваше доверие!");
                  },
                  child: Container(
                    width: double.infinity,
                    height: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color(0xff002a86)),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/img/img_2.png',
                            width: 40,
                            height: 25,
                          ),
                          const Gap(5),
                          const Text("Русский",
                              style: TextStyle(color: Colors.white, fontSize: 20))
                        ],
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
  void _showActionSheet(String data) {
    showCupertinoModalPopup(context: context, builder: (context) => CupertinoActionSheet(
      title: Text(data,style: TextStyle(color: Colors.black,fontSize: 15),),
      actions: [
        CupertinoActionSheetAction(
          onPressed: () {
            Navigator.of(context).pop();
          }, child: Text("Maxfiylik Siyosati"),
        ),
        CupertinoActionSheetAction(
          onPressed: () {
            Navigator.of(context).pop();
          }, child: Text("Qabul Qilish"),
        ),
      ],
    ));
  }
}