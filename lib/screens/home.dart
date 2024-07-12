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
            SizedBox(height: 20),
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
                  child: Image.asset(
                    "assets/images/screen_icon/icons Q2.png",
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
                   child: Image.asset(
                    "assets/images/screen_icon/table-lights-svgrepo-com 1.png",
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
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                child: GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  childAspectRatio: 0.7,
                  children: [
                    _buildProductCard(
                      imageUrl: 'https://s3-alpha-sig.figma.com/img/3993/b508/a9020b5032b9e862a1a4a2acd932fe9c?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=bSq2h8XLKDssHcf-wwAfDdMU0naOyVLXIJ4FOxVB5~Dl4W1JNriCu-Pnxn-icHbBKuy7nRV6bxdkXaFz3xiTx12XLftAH4f4ChA0LRfAobVQH0AE0o~Wpmmo4msbB9OTQKmGfQAVj9jsfX~wT2a3r~iviU3Sq~kOhE~9WWb0218NUmUXUv~TwDgcETbjugzJYjWwtuhQ1vaRVfTpmACAItrdA~gooN0P7yWVkqhoCXheaocpiRD7CAXo5W68k7tPRCDn-rxgfS7NbyR-FFR2KcxCeM6o~aeswYqvTelswDfpXPtrQ55S-JepE7gFVgSoaAya2oSdhSyddfTkOCanAA__',
                      title: 'Room Sofa',
                      price: '\¥2500',
                      colors: [Color(0xFF7993AE), Color(0xFFC9A885), Color(0xFF282828)],
                    ),
                    _buildProductCard(
                      imageUrl: 'https://s3-alpha-sig.figma.com/img/bd1b/48b3/d63a50665c28ca5301405af7c3fe8c79?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=AAt-XfXLXzLMQj9taYeoQUMH43nI2hdDaK-3ebEwkotXDFpqWMXRMARePPm0-PlAsdSdbwTG-74arV2MTT90o722tU~7fuiJ0LKRJ93-7FO0bgb2jDywHwDV8rjL~45HX8TcIDnLAV4z9eHpAIqGJM1TdKEh3NYWasknZL42cpXClo0dXrcfvJLu6IUpIWyVsiq8AbWMo-DNugYl9Q8XC8oSIqb0I3GbRHKgKYVI4GqMKpfUk6Bkag6-Z7YqNO12T7VIkU88oXixNhXSIxk26~RJzHLiWeH8LqHcsQz-6eI9rNLcliFW0Jw3Py6RDh3XIFGth0kFwG7ZuBuM20x2RA__',
                      title: 'Toshiba Tv',
                      price: '\¥3250',
                      colors: [Color(0xFF414142), Color(0xFF717172), Color(0xFF282828)],
                    ),
                    _buildProductCard(
                      imageUrl: 'https://s3-alpha-sig.figma.com/img/9b63/727d/bad7fd5b1e56a7060c1c376249247df5?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=cszEofC9Z0S8JeMw~rtt5GVQ6lg1Z1mOmjtjVp6RCelSnYaUlGdj9ljD4WNWCUy-cUPgOqJiRw~2XoHEpXk3F1rtZFuq4rkQsk0h58m7LWtnvy16nTtysv1CgeaN~tIDZXMrjA9pKLFETAFPvIqaU6qwZk25wvLjOylP2cQ8CyV5w~KYYzfjMLRm1V7FLllTFZHIQgFsc564MDYTOFxX-xmrIIXZWfkUNQ~1jtt3W9uUv2hJsLNBfIHxeNzXE1SeDPiv~PgKl~HabX5k1kGZYScIyRLxBEq5RksbCYyz63fdOWbRWy9LNJX9vwIjaz~78PQMYMXHWqPVUSKBnzGE7w__',
                      title: 'Table Lamp',
                      price: '\¥550',
                      colors: [Color(0xFF323232), Color(0xFFC9A885), Color(0xFFA05A3F)],
                    ),
                    _buildProductCard(
                      imageUrl: 'https://s3-alpha-sig.figma.com/img/3450/5dcc/b6fc3f3c37a60a2c404b2a3c3ca04555?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=HGPmKPr4yyshSZ1rn-kdShZXHTR0WMssOEfw7PNH7qe9bMLO4Oslgt0OOL9ZC0f7vzmGjqNbYhjr2msx-vpM0gtT9C94BRK5VMDvhrSW2~jCle0geGERvOAqXJyAXDePBzX-e~cbjnq812ovDTQlhSLv7QIP38NAOPEtBiH80uwk1JBHbAOHoVwFYJEe~Xe28SuImXlDp~0EtG~UhTPyd8bXPubJyae9ZEhTIxkOg2HbIcEhBi1F8rxhg0WveO~61P9YDpn57CY3yVne4yXrbtbKtXlY~7egpa3sQolur81RZFI0osel4n8yKiL09W6SyecksNXJZ30d7tTa-ReR8A__',
                      title: 'Table Lamp',
                      price: '\¥550',
                      colors: [Color(0xFF947146), Color(0xFFC9A885), Color(0xFF282828)],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProductCard({
    required String imageUrl,
    required String title,
    required String price,
    required List<Color> colors,
  }) {
    return Container(
      width: 160,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
            child: Container(
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const Positioned(
            top: 8,
            right: 8,
            child: Icon(
              Icons.favorite_border,
              color: Colors.black,
              size: 20,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5),
                Row(
                  children: colors.map((color) => Padding(
                    padding: const EdgeInsets.only(right: 4.0),
                    child: Icon(Icons.circle, size: 10, color: color),
                  )).toList(),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      price,
                      style: const TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.all(4.0),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
