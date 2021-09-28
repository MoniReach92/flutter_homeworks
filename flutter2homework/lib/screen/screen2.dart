import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.3),
        ),
        child: Expanded(
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 28),
                      child: Text(
                        "Categories",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 7,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          bottuns("Elictronic"),
                          bottun("Shoes"),
                          bottun("Cloths"),
                          bottun("Home"),
                        ],
                      ),
                    ),
                    VerticalDivider(
                      thickness: 1,
                    ),
                    Expanded(
                      flex: 6,
                      child: Column(
                        children: [
                          listTittle("Phones"),
                          listTittle("Laptops"),
                          listTittle("Drones"),
                          listTittle("Geapics Cards"),
                          listTittle("CPU"),
                          listTittle("Motherboards"),
                        ],
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

  Widget bottun(String text) {
    return RotatedBox(
      quarterTurns: 3,
      child: Padding(
        padding: const EdgeInsets.only(right: 15),
        child: Container(
          width: 110,
          height: 65,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.black),
          child: TextButton(
            onPressed: () {},
            child: Text(
              text,
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }

  Widget bottuns(String text) {
    return RotatedBox(
      quarterTurns: 3,
      child: Padding(
        padding: const EdgeInsets.only(right: 15),
        child: Container(
          width: 120,
          height: 65,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black, width: 3)),
          child: TextButton(
            onPressed: () {},
            child: Text(
              text,
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }

  Widget listTittle(String txt) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, right: 15),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(15)),
        child: ListTile(
          leading: Text(
            txt,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          trailing: FaIcon(
            Icons.chevron_right_outlined,
            size: 35,
          ),
        ),
      ),
    );
  }
}
