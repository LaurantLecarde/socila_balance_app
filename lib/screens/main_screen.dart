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
            SizedBox(height: MediaQuery.of(context).size.width / 1.4,),
            const Text('Ilova tilini tanlang',
                style: TextStyle(color: Colors.black, fontSize: 30)),
            SizedBox(height: MediaQuery.of(context).size.width / 1.5,),
            InkWell(
                onTap: () {
                  showDialog(context: context, builder: (context){
                    return  AlertDialog(
                      actions: [
                        Column(
                          children: [
                            const Gap(30),
                            const Text("Sizning maxfiyligingiz biz uchun muhim. Shaxsiy ma'lumotlaringizni qanday qayta  ishlashimiz haqida qisqacha ma'lumot  beramiz. Tafsilotlarni bizning maxfiylik  siyosatimizda topishingiz mumkin. Sizning  ishonchingiz biz uchun muhim !",style: TextStyle(color: Colors.black54),),
                            const   Gap(10),
                            InkWell(
                              onTap: (){},
                              child: Container(
                                height: 55,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: const Color(0xFF2268E7)),
                                width: MediaQuery.of(context).size.width / 2.9,
                                child: const Center(child:  Text('Maxfiylik Siyosati',style: TextStyle(color: Colors.white))),
                              ),
                            ),
                            const  Gap(10),
                            InkWell(
                              onTap: (){},
                              child: Container(
                                height: 55,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: const Color(0xff002a86)),
                                width: MediaQuery.of(context).size.width / 2,
                                child:const Center(child:  Text('Qabul qilish',style: TextStyle(color: Colors.white))),
                              ),
                            ),
                          ],
                        )
                      ],
                    );
                  });
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
                  showDialog(context: context, builder: (context){
                    return  AlertDialog(
                      actions: [
                        Column(
                          children: [
                            const Gap(30),
                            const Text("Ваша конфиденциальность важна для нас. Мы дадим вам краткое описание того, как мы обрабатываем ваши персональные данные. Подробности вы можете найти в нашей политике конфиденциальности. Нам важно Ваше доверие!",style: TextStyle(color: Colors.black54),),
                            const   Gap(10),
                            InkWell(
                              onTap: (){},
                              child: Container(
                                height: 55,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: const Color(0xFF2268E7)),
                                width: MediaQuery.of(context).size.width / 2.9,
                                child: const Center(child:  Text('Политика конфиденциальности',style: TextStyle(color: Colors.white))),
                              ),
                            ),
                            const  Gap(10),
                            InkWell(
                              onTap: (){},
                              child: Container(
                                height: 55,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: const Color(0xff002a86)),
                                width: MediaQuery.of(context).size.width / 2,
                                child:const Center(child:  Text('Допущение',style: TextStyle(color: Colors.white))),
                              ),
                            ),
                          ],
                        )
                      ],
                    );
                  });
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
    );
  }
}
