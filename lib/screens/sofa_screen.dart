import 'package:flutter/material.dart';

class SofaScreen extends StatelessWidget {
  const SofaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 51,
                        left: 26,
                      ),
                      child: Icon(
                        Icons.arrow_back,
                        color: Color(0xFF282828),
                        size: 24,
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 51),
                          child: Image.asset(
                            "assets/images/sofa.png",
                            width: 287,
                            height: 303,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 36,
                        right: 22,
                      ),
                      child: Icon(
                        Icons.favorite_border,
                        color: Color(0xFF282828),
                        size: 24,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 340,
                margin: const EdgeInsets.only(top: 21),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 44,
                      child: Text(
                        "Room Sofa",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const CounterScreen(),
                  ],
                ),
              ),
              Container(
                width: 52.02,
                margin: const EdgeInsets.only(right: 290, top: 15),
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    CircleAvatar(
                      radius: 7,
                      backgroundColor: Color(0xff7993AE),
                    ),
                    CircleAvatar(
                      radius: 7,
                      backgroundColor: Color(0xffC9A885),
                    ),
                    CircleAvatar(
                      radius: 7,
                      backgroundColor: Color(0xff282828),
                    ),
                  ],
                ),
              ),
              Container(
                width: 340,
                margin: const EdgeInsets.only(top: 10),
                child: const Text(
                  "Drawing Room Wooden Sofa Set is solid wooden sofa set which you can contrast the cushion of any color. The good sight caused ue to the furniture help us relax for a longer time.",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    height: 1.5,
                    fontFamily: "Hauora",
                  ),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 26, horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "¥2500",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                        fontFamily: "Hauora",
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Container(
                        width: 160,
                        height: 55,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: const Color(0xFF607D8B),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Text(
                          'Add to cart',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  Number createState() => Number();
}

class Number extends State<CounterScreen> {
  int _number = 0;

  void _incrementCounter() {
    setState(() {
      _number++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_number > 0) {
        _number--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 93,
      height: 30,
      decoration: BoxDecoration(
        color: const Color(0xffE7E7E7),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(Icons.remove),
            onPressed: _decrementCounter,
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            constraints: const BoxConstraints(),
          ),
          Flexible(
            child: Text(
              "$_number",
              textAlign: TextAlign.center,
            ),
          ),
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: _incrementCounter,
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            constraints: const BoxConstraints(),
          ),
        ],
      ),
    );
  }
}
