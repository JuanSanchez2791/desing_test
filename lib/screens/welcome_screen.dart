import 'package:design_test/screens/home_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.black,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: size.height * 0.15,
            ),
            Row(
              children: [
                Container(
                  width: size.width * 0.39,
                  height: size.height * 0.22,
                  margin: const EdgeInsets.only(
                      left: 40.0, right: 2.5, bottom: 2.5),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                      width: 3,
                    ),
                  ),
                  child: Stack(
                    alignment: AlignmentDirectional.bottomStart,
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        margin: const EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(255, 230, 248, 100),
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: size.width * 0.39,
                  height: size.height * 0.22,
                  margin:
                      const EdgeInsets.only(left: 2.5, right: 20, bottom: 2.5),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                      width: 3,
                    ),
                  ),
                  child: Stack(
                    alignment: AlignmentDirectional.centerStart,
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(148, 125, 194, 100),
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  width: size.width * 0.39,
                  height: size.height * 0.22,
                  margin:
                      const EdgeInsets.only(left: 40.0, right: 2.5, top: 2.5),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                      width: 3,
                    ),
                  ),
                  child: Stack(
                    alignment: AlignmentDirectional.centerEnd,
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        margin: const EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(197, 137, 198, 100),
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: size.width * 0.39,
                  height: size.height * 0.22,
                  margin: const EdgeInsets.only(left: 2.5, right: 20, top: 2.5),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                      width: 3,
                    ),
                  ),
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        margin: const EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 252, 176, 225),
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              margin: const EdgeInsets.only(left: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Trade Money",
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  ),
                  Text(
                    "Spend Cash",
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  ),
                  Text(
                    "Anywhere.",
                    style: TextStyle(
                      fontSize: 40,
                      color: Color.fromRGBO(254, 169, 226, 100),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
              },
              child: Container(
                margin: const EdgeInsets.all(35),
                height: size.height * 0.06,
                width: size.width * 0.9,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(148, 125, 194, 100),
                ),
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: const [
                  Text(
                    "Let's Start",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
