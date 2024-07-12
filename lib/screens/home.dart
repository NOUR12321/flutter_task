import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task/screens/provider_home.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeProviderState();
}

class _HomeProviderState extends State<Home> {
  final teal = Color(0xff7993AE);
  final gray = Color(0xffCFCFCF);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 47, right: 33, left: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    child: const Text(
                      "Find the home furniture",
                      style: TextStyle(
                        height: 1.2,
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF282828),
                      ),
                    ),
                  ),
                ),
                Icon(
                  Icons.list,
                  size: 30,
                  color: Color(0xFF282828),
                ),
              ],
            ),
            SizedBox(height: 20), // Space between the title and the row of icons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      context.read<ProviderHome>().toggleAll();
                    },
                    child: Selector<ProviderHome, bool>(
                      selector: (context, provider) => provider.allSelected,
                      builder: (context, allSelected, _) {
                        return Container(
                          alignment: Alignment.center,
                          child: Text("All"),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            color: allSelected ? teal : gray,
                          ),
                          height: 115,
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(width: 10), // Space between containers
                Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                    "assets/images/screen_icon/sofa-with-armrest-svgrepo-com 1.png",
                    width: 31.22, // Adjust the width as needed
                    height: 14.85, // Adjust the height as needed
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    color: gray,
                  ),
                  width: 70,
                  height: 90,
                ),
                SizedBox(width: 10), // Space between containers
                Container(
                  alignment: Alignment.center,
                  child: Icon(Icons.favorite_border),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    color: gray,
                  ),
                  width: 70,
                  height: 90,
                ),
                SizedBox(width: 10), // Space between containers
                Container(
                  alignment: Alignment.center,
                  child: Icon(Icons.abc_outlined),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    color: gray,
                  ),
                  width: 70,
                  height: 90,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
