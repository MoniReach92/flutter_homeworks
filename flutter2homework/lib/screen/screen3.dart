import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  _Screen3State createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.grey.withOpacity(0.3),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 25, left: 15),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Text(
                      "Card",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                  ),
                ],
              ),
            ),
            buildRowItem(
                "https://cavallomoda.com/wp-content/uploads/2019/02/White-Background-Leather-Handbag-P17283-Brown-Tan-1.jpg",
                "Hand Bag",
                "USD. 400.00"),
            buildRowItem(
                "https://www.clipartkey.com/mpngs/m/174-1747370_nike-shoes-png-nike-shoes-png-hd.png",
                "Nike air",
                "USD. 300.00"),
            Spacer(),
            Container(
              width: double.infinity,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
                border: Border.all(color: Colors.grey.withOpacity(0.5)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "TOTAL",
                          style: TextStyle(fontSize: 17),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text("USD. 700.00", style: TextStyle(fontSize: 25)),
                      ],
                    ),
                    Container(
                      width: 170,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black,
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "CHECKOUT",
                          style: TextStyle(fontSize: 17, color: Colors.white),
                        ),
                      ),
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

  Widget buildRowItem(String img, String title, String subTitle) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 20),
      child: Row(
        children: [
          Container(
            width: 170,
            height: 170,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                img,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            width: 180,
            height: 170,
            // color: Colors.blue,
            child: Padding(
              padding: const EdgeInsets.only(left: 15, top: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(subTitle),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      buildCircle("-"),
                      SizedBox(
                        width: 15,
                      ),
                      buildCircle("0"),
                      SizedBox(
                        width: 15,
                      ),
                      buildCircle("+"),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCircle(String text) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black,
      ),
      child: Center(
        child: Text(text,
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
      ),
    );
  }
}
