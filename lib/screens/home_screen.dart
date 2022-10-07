import 'package:card_swiper/card_swiper.dart';
import 'package:design_test/screens/banking_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool hidden = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(15),
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.03,
            ),
            Row(
              children: const [
                Text(
                  "Hello Emily,",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                SizedBox(
                  width: 130,
                ),
                Icon(
                  Icons.notifications_active_outlined,
                  size: 30,
                ),
                SizedBox(
                  width: 20,
                ),
                CircleAvatar(),
              ],
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            SizedBox(
              width: size.width * 0.9,
              height: size.height * 0.21,
              child: Swiper(
                itemCount: 2,
                layout: SwiperLayout.STACK,
                itemWidth: size.width * 0.8,
                itemHeight: size.height * 0.5,
                itemBuilder: (_, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const BankingScreen()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    const Text(
                                      "Your Balance",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 14),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        setState(() {
                                          hidden = !hidden; 
                                        });
                                      },
                                      icon: const Icon(
                                        Icons.remove_red_eye_outlined,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  hidden ? "*****" : "7,620.00",
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),                            
                                SizedBox(
                                  height: size.height * 0.02,
                                ),
                                Container(
                                  width: size.width * 0.2,
                                  height: size.height * 0.03,
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromRGBO(148, 125, 194, 100),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.arrow_upward_outlined,
                                        size: size.height * 0.023,
                                        color: Colors.white,
                                      ),
                                      const Text(
                                        "680 * 4%",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  width: size.width * 0.4,
                                  height: size.height * 0.05,
                                  child: Stack(
                                    alignment: AlignmentDirectional.bottomEnd,
                                    children: [
                                      FaIcon(FontAwesomeIcons.paw, size: 26, color: Colors.white,)
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: size.width * 0.4,
                                  height: size.height * 0.05,
                                  child: Stack(
                                    alignment: AlignmentDirectional.bottomEnd,
                                    children: [
                                      Icon(
                                        Icons.star_border_purple500,
                                        color: Colors.white,
                                        size: size.height * 0.10,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: size.height * 0.15,
                  width: size.width * 0.4,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(197, 137, 198, 100),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      const Icon(
                        Icons.add_box_outlined,
                        color: Colors.white,
                        size: 50,
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      const Text(
                        "Add Money",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: size.width * 0.03,
                ),
                Container(
                  height: size.height * 0.15,
                  width: size.width * 0.4,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(148, 124, 195, 100),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      const Icon(
                        Icons.compare_arrows_sharp,
                        color: Colors.white,
                        size: 50,
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      const Text(
                        "Banking",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Row(
              children: [
                const Text(
                  "Transaction",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  width: size.width * 0.7,
                  child: Stack(
                    alignment: AlignmentDirectional.bottomEnd,
                    children: const [
                      Text(
                        "View All",
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(148, 124, 195, 100),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.3,
              child: ListView(
                children: [
                  Container(
                    height: size.height * 0.1,
                    width: size.width * 0.6,
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.0, color: Colors.grey),
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: size.width * 0.1,
                          height: size.height * 0.06,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Icon(
                            Icons.pets_outlined,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: size.width * 0.02,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: size.height * 0.02,
                            ),
                            const Text(
                              "Pet Service",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const Text(
                              "Sep 27th, 2022",
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(                          
                          width: size.width * 0.62,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,                            
                            children: [
                              SizedBox(
                                height: size.height * 0.02,
                              ),
                              const Text(
                                "-131",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const Text(
                                "-0.42%",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: size.height * 0.1,
                    width: size.width * 0.6,
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.0, color: Colors.grey),
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: size.width * 0.1,
                          height: size.height * 0.06,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Icon(
                            Icons.fitness_center_rounded,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: size.width * 0.02,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: size.height * 0.02,
                            ),
                            const Text(
                              "Fitness Monthly",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const Text(
                              "Sep 27th, 2022",
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(                          
                          width: size.width * 0.54,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,                            
                            children: [
                              SizedBox(
                                height: size.height * 0.02,
                              ),
                              const Text(
                                "-582",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const Text(
                                "-2.2%",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: size.height * 0.1,
                    width: size.width * 0.6,
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.0, color: Colors.grey),
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: size.width * 0.1,
                          height: size.height * 0.06,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Icon(
                            Icons.apple_outlined,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: size.width * 0.02,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: size.height * 0.02,
                            ),
                            const Text(
                              "Fruit",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const Text(
                              "Sep 25th, 2022",
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(                          
                          width: size.width * 0.64,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,                            
                            children: [
                              SizedBox(
                                height: size.height * 0.02,
                              ),
                              const Text(
                                "-6",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const Text(
                                "-0.02%",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: size.height * 0.1,
                    width: size.width * 0.6,
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.0, color: Colors.grey),
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: size.width * 0.1,
                          height: size.height * 0.06,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Icon(
                            Icons.local_hospital_outlined,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: size.width * 0.02,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: size.height * 0.02,
                            ),
                            const Text(
                              "Hospital",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const Text(
                              "Sep 28th, 2022",
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(                          
                          width: size.width * 0.64,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,                            
                            children: [
                              SizedBox(
                                height: size.height * 0.02,
                              ),
                              const Text(
                                "-620",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const Text(
                                "-0.02%",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.home_outlined, color: Colors.grey,), label: ""),
          BottomNavigationBarItem(icon: const Icon(Icons.account_balance_wallet_outlined, color: Colors.grey,), label: ""),
          const BottomNavigationBarItem(icon: Icon(Icons.health_and_safety_outlined, color: Colors.grey,), label: ""),
          const BottomNavigationBarItem(icon: Icon(Icons.settings, color: Colors.grey,), label: ""),
        ],
        ),
    );
  }
}
