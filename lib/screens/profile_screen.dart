import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
              height: 300,
            ),
            const Gap(10),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: const Color(0xff002a86),
                borderRadius: BorderRadius.circular(60),
              ),
              child: const Icon(CupertinoIcons.person_fill,
                  color: Colors.white, size: 50),
            ),
            const Gap(30),
            const Text("Samandar",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20)),
            const Gap(30),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    decoration: InputDecoration(
                        suffixIcon: const Icon(
                          CupertinoIcons.forward,
                          color: Colors.black,
                        ),
                        hintText: 'Bolam qayerda ?',
                        filled: true,
                        fillColor: Colors.grey,
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(color: Colors.grey)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(color: Colors.grey)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(color: Colors.grey))),
                  ),
                  const Gap(10),
                  TextField(
                    decoration: InputDecoration(
                        suffixIcon: const Icon(
                          CupertinoIcons.forward,
                          color: Colors.black,
                        ),
                        hintText: "Akkauntni o'zgartirish",
                        filled: true,
                        fillColor: Colors.grey,
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(color: Colors.grey)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(color: Colors.grey)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(color: Colors.grey))),
                  ),
                  const Gap(10),
                  TextField(
                    decoration: InputDecoration(
                        suffixIcon: const Icon(
                          CupertinoIcons.forward,
                          color: Colors.black,
                        ),
                        hintText: 'Bola ulash',
                        filled: true,
                        fillColor: Colors.grey,
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(color: Colors.grey)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(color: Colors.grey)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(color: Colors.grey))),
                  ),
                  const Gap(10),
                  TextField(
                    decoration: InputDecoration(
                        suffixIcon: const Icon(
                          CupertinoIcons.forward,
                          color: Colors.black,
                        ),
                        hintText: "Parolni o'zgartirish",
                        filled: true,
                        fillColor: Colors.grey,
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(color: Colors.grey)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(color: Colors.grey)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(color: Colors.grey))),
                  ),
                  const Gap(10),
                  TextField(
                    decoration: InputDecoration(
                        suffixIcon: const Icon(
                          CupertinoIcons.forward,
                          color: Colors.black,
                        ),
                        hintText: "Tilni o'zgartirish",
                        filled: true,
                        fillColor: Colors.grey,
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(color: Colors.grey)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(color: Colors.grey)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(color: Colors.grey))),
                  ),
                  const Gap(10),
                  TextField(
                    decoration: InputDecoration(
                      suffixIcon: const Icon(
                        CupertinoIcons.forward,
                        color: Colors.black,
                      ),
                      hintText: "Bog'lanish telegram",
                      filled: true,
                      fillColor: Colors.grey,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(color: Colors.grey)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(color: Colors.grey)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(color: Colors.grey)),
                    ),
                  ),
                  const Gap(10),
                  Container(
                    width: 100,
                    height: 60,
                    decoration: BoxDecoration(
                      color:  const Color(0xff002a86),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: InkWell(
                      onTap: () {
                        _showActionSheet("Rostdan ham chiqib ketmoqchimisiz?");
                      },
                      child: Center(child: Text("Chiqish",style: TextStyle(color: Colors.white),)),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void _showActionSheet(String data) {
    showCupertinoModalPopup(
        context: context,
        builder: (context) => CupertinoActionSheet(
              title: Text(data,
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
              actions: [
                CupertinoActionSheetAction(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Ha'),
                ),
                CupertinoActionSheetAction(
                  onPressed: () {
                    Navigator.of(context).pop();},
                  child: const Text("Yo'q"),
                )
              ],
            ));
  }
}
