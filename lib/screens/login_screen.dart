import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:socila_balance_app/screens/login_with_number.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: [
                const Gap(80),
                Image.asset('assets/img/img.png', height: 60, width: 50),
                const Gap(40),
                const Text(
                  "Xush kelibsiz",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                const Gap(40),
                const Text("Kirish",
                    style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
                const Gap(40),
                 Center(
                   child: SizedBox(height: 55, width: double.infinity, child: TextField(
                    decoration: InputDecoration(
                      isDense: true,
                      hintText: '+998 000 00 00',
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(45),
                            borderSide: const BorderSide(color: Colors.black)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(45),
                            borderSide: const BorderSide(color: Colors.black)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(45),
                            borderSide: const BorderSide(color: Colors.black))),
                                   )),
                 ),
                const Gap(40),
                InkWell(
                    onTap: () {
                      Navigator.of(context).push(CupertinoPageRoute(builder: (context)=> const LoginWithNumber()));
                    },
                    child: Container(
                      height: 55,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(45),
                          color: const Color(0xff002a86)),
                      width:double.infinity,
                      child: const Center(
                          child: Text('Keyingisi',
                              style: TextStyle(color: Colors.white))),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
