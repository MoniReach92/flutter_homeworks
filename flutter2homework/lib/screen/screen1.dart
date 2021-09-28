import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    var widthScreen = MediaQuery.of(context).size.width;
    var heigthScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      // appBar: SafeArea(child: SizedBox(height: 5,),),
      body: _buildBody,
    );
  }

  get _buildBody {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.grey.withOpacity(0.3),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Deal Finder",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                  ),
                  Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.search,
                            size: 28,
                          ))),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  textButton("MEN"),
                  textButton("WOMEN"),
                  textButton("KID"),
                  textButton("LADY"),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, bottom: 8),
              child: Container(
                width: double.infinity,
                height: 280,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.black,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.network(
                    "https://www.coywolf.news/wp-content/uploads/2020/05/og-shop-app.png",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            rowDot,
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12, top: 10, bottom: 5),
                  child: Text(
                    "Best Deals",
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  boxItem(
                      "https://image.shutterstock.com/image-photo/pair-red-suede-highheeled-shoes-260nw-360271571.jpg"),
                  boxItem(
                      "https://cavallomoda.com/wp-content/uploads/2019/02/White-Background-Leather-Handbag-P17283-Brown-Tan-1.jpg"),
                  boxItem(
                      "https://media.gq.com/photos/5e839e84d73e2d00084f1a4f/master/w_1280%2Cc_limit/Uniqlo-U-crew-neck-short-sleeve-T-shirt.jpg"),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12, top: 15, bottom: 5),
                  child: Text(
                    "Most Popular",
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  boxItem(
                      "https://cdn.xxl.thumbs.canstockphoto.com/black-socks-isolated-on-white-background-stock-image_csp35756260.jpg"),
                  boxItem(
                      "https://media.istockphoto.com/photos/blue-denim-jeans-texture-picture-id507182006?s=612x612"),
                  boxItem(
                      "https://previews.123rf.com/images/vitalily73/vitalily731704/vitalily73170400185/76635632-woman-hat-isolated-on-white-background-women-s-beach-hat-colorful-hat-yellow-hat-.jpg"),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }

  Widget boxItem(String img) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 8, top: 4),
      child: Container(
        width: 170,
        height: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18), color: Colors.white),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Image.network(img, fit: BoxFit.fill),
        ),
      ),
    );
  }

  Widget textButton(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 10, top: 12),
      child: Container(
          width: 130,
          height: 50,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: TextButton(
              onPressed: () {},
              child: Text(
                text,
                style: TextStyle(fontSize: 18, color: Colors.black),
              ))),
    );
  }

  get rowDot {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 5, right: 5, top: 6),
          child: Container(
            width: 10,
            height: 13,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.black),
          ),
        ),
        dot(),
        dot(),
        dot(),
        dot(),
        dot(),
        dot(),
        dot(),
      ],
    );
  }

  Widget dot() {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5, top: 6),
      child: Container(
        width: 10,
        height: 13,
        decoration: BoxDecoration(
            shape: BoxShape.circle, color: Colors.black.withOpacity(0.5)),
      ),
    );
  }
}
