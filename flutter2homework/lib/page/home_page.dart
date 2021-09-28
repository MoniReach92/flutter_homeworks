import 'package:flutter/material.dart';
import 'package:flutter2homework/screen/screen1.dart';
import 'package:flutter2homework/screen/screen2.dart';
import 'package:flutter2homework/screen/screen3.dart';
import 'package:flutter2homework/screen/screen4.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  // const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectPage = 0;
  List<Widget> _listScreen = [
    Screen1(),
    Screen2(),
    Screen3(),
    Screen4(),
  ];

  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    var widthScreen = MediaQuery.of(context).size.width;
    var heigthScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: widthScreen,
        height: heigthScreen,
        child: PageView(
          children: _listScreen,
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              _selectPage = index;
            });
          },
        ),
      ),
      bottomNavigationBar: _buildBottom,
    );
  }

  get _buildBottom {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: FaIcon(Icons.menu), label: "Categories"),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: "Card"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
      ],
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.black,
      currentIndex: _selectPage,
      // backgroundColor: Colors.black12.withOpacity(0.1),
      // type: BottomNavigationBarType.fixed,
      onTap: (index) {
        setState(() {
          _selectPage = index;
          _pageController.animateToPage(_selectPage,
              duration: Duration(milliseconds: 400), curve: Curves.easeInOut);
        });
      },
    );
  }
}
