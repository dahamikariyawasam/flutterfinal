import 'package:flutter/material.dart';
import 'package:flutternew/pages/details.dart';
import 'package:flutternew/pages/details2.dart';
import 'package:flutternew/pages/details3.dart';
import '../widget/widget_support.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool location = false, hotel = false, restaurant = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 50.0, left: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hello Dahami",
                    style: AppWidget.boldTextFieldStyle(),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20.0),
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(Icons.shopping_cart, color: Colors.white),
                  ),
                ],
              ),
              SizedBox(height: 30.0),
              Text(
                "Accomodations",
                style: AppWidget.HeadlineTextFieldStyle(),
              ),
              Text(
                "Most popular Hotels.",
                style: AppWidget.LightTextFieldStyle(),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(right: 20.0),
                child: showItem(),
              ),
              SizedBox(height: 30),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Details()),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.all(5),
                        child: Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            padding: EdgeInsets.all(14),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "images/bazar.jpg",
                                  height: 150,
                                  width: 150,
                                  fit: BoxFit.cover,
                                ),
                                Text(
                                  "Fort Bazar",
                                  style: AppWidget.semiBoldTextFieldStyle(),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Galle",
                                  style: AppWidget.LightTextFieldStyle(),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "\$25",
                                  style: AppWidget.semiBoldTextFieldStyle(),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Details2()),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.all(4),
                        child: Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            padding: EdgeInsets.all(14),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "images/lagradle.jpg",
                                  height: 150,
                                  width: 150,
                                  fit: BoxFit.cover,
                                ),
                                Text(
                                  "La Gradle",
                                  style: AppWidget.semiBoldTextFieldStyle(),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Galle",
                                  style: AppWidget.LightTextFieldStyle(),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "\$35",
                                  style: AppWidget.semiBoldTextFieldStyle(),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // vertical boxes
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Details3()),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(right: 20.0),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            "images/thelady.jpg",
                            height: 120,
                            width: 120,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width / 2,
                                child: Text(
                                  "The Lady Hill",
                                  style: AppWidget.semiBoldTextFieldStyle(),
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 2,
                                child: Text(
                                  "Galle",
                                  style: AppWidget.LightTextFieldStyle(),
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 2,
                                child: Text(
                                  "\$20 ",
                                  style: AppWidget.semiBoldTextFieldStyle(),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

Widget showItem() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      GestureDetector(
        onTap: () {
          setState(() {
            location = false;
            hotel = true;
            restaurant = false;
          });
        },
        child: Material(
          elevation: 5.0,
          borderRadius: BorderRadius.circular(10),
          child: Container(
            decoration: BoxDecoration(
              color: hotel ? Colors.black : Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            padding: EdgeInsets.all(8),
            child: Container(
              width: 100, // Set your desired width
              height: 40, // Set your desired height
              alignment: Alignment.center,
              child: Text(
                "Hotels",
                style: AppWidget.semiBoldTextFieldStyle().copyWith(
                  color: hotel ? Colors.white : Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
      GestureDetector(
        onTap: () {
          setState(() {
            location = false;
            hotel = false;
            restaurant = true;
          });
        },
        child: Material(
          elevation: 5.0,
          borderRadius: BorderRadius.circular(10),
          child: Container(
            decoration: BoxDecoration(
              color: restaurant ? Colors.black : Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            padding: EdgeInsets.all(8),
            child: Container(
              width: 100, // Set your desired width
              height: 40, // Set your desired height
              alignment: Alignment.center,
              child: Text(
                "Restaurants",
                style: AppWidget.semiBoldTextFieldStyle().copyWith(
                  color: restaurant ? Colors.white : Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    ],
  );
}

}
