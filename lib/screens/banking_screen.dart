import 'package:flutter/material.dart';

class BankingScreen extends StatelessWidget {
  const BankingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    TextEditingController account = TextEditingController();
    TextEditingController name = TextEditingController();
    TextEditingController money = TextEditingController();
    TextEditingController content = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.03,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(Icons.arrow_back),
                  ),
                  SizedBox(
                    width: size.width * 0.3,
                  ),
                  const Text(
                    "Banking",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.3,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(Icons.qr_code_scanner_outlined),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Container(
                height: size.height * 0.20,
                width: size.width * 0.9,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(255, 171, 225, 100),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Your Balance",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.015,
                    ),
                    const Text(
                      "7,260.00",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    const Text(
                      "Emily Nickerson",
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Container(
                width: size.width * 0.9,
                height: size.height * 0.112,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(235, 235, 235, 100),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Bank",
                      style: TextStyle(
                          fontSize: 10,
                          color: Color.fromRGBO(147, 128, 185, 100),
                          fontWeight: FontWeight.w500),
                    ),
                    DropdownButtonFormField(
                      items: const [
                        DropdownMenuItem(
                          value: "Bancolombia",
                          child: Text("Bancolombia"),
                        ),
                      ],
                      onChanged: (_) {},
                      hint: const Text("Seleccione una opcion"),
                      decoration: const InputDecoration(
                        enabledBorder: InputBorder.none,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              SizedBox(
                height: 60,
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(235, 235, 235, 100),
                  ),
                  child: TextFormField(
                    controller: account,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(235, 235, 235, 100),
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(235, 235, 235, 100),
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(235, 235, 235, 100),
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(235, 235, 235, 100),
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(235, 235, 235, 100),
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      labelText: "Account Number",
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Container(
                width: size.width * 0.9,
                height: size.height * 0.112,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(235, 235, 235, 100),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Name",
                      style: TextStyle(
                          fontSize: 10,
                          color: Color.fromRGBO(147, 128, 185, 100),
                          fontWeight: FontWeight.w500),
                    ),
                    TextFormField(
                      controller: name,
                      decoration: const InputDecoration(
                        enabledBorder: InputBorder.none,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Container(
                width: size.width * 0.9,
                height: size.height * 0.112,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(235, 235, 235, 100),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Money",
                      style: TextStyle(
                          fontSize: 10,
                          color: Color.fromRGBO(147, 128, 185, 100),
                          fontWeight: FontWeight.w500),
                    ),
                    TextFormField(
                      controller: money,
                      decoration: const InputDecoration(
                        enabledBorder: InputBorder.none,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Container(
                width: size.width * 0.9,
                height: size.height * 0.112,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(235, 235, 235, 100),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Content",
                      style: TextStyle(
                          fontSize: 10,
                          color: Color.fromRGBO(147, 128, 185, 100),
                          fontWeight: FontWeight.w500),
                    ),
                    TextFormField(
                      controller: content,
                      decoration: const InputDecoration(
                        enabledBorder: InputBorder.none,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: size.height * 0.06,
                  width: size.width * 0.9,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(147, 128, 185, 100),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Exchange",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
