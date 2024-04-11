import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import '../widgets/navbar.dart';
import '../widgets/topbar.dart';


List<Map<String, dynamic>> iconData = [
  {
    'name': 'Medicine',
    'path': 'assets/medicine.svg',
  },
  {
    'name': 'Food',
    'path': 'assets/food.svg',
  },
  {
    'name': 'Yoga',
    'path': 'assets/self_improvement.svg',
  },
  {
    'name': 'Counter',
    'path': 'assets/path2.svg',
  },
  {
    'name': 'Weight',
    'path': 'assets/weight.svg',
  },
  // Add more icons as needed
];

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: TopAppBar(), // Wrap TopAppBar inside appBar property
        bottomNavigationBar: BottomNavBar(),
        backgroundColor: Color.fromARGB(255, 255, 223, 226),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // ===================== child growth =================================
              Container(
                margin: EdgeInsets.only(top: 15, left: 20, right: 20),
                height: 425,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromARGB(255, 249, 200, 200),
                ),
                child: Column(
                  children: [
                    // Text("Child Growth image here"),
                    Image.asset("assets/pngegg.png", height: 200),
                    Center(
                      child: Text(
                        "1 weeks ,4 days",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Color.fromARGB(255, 173, 102, 102),
                        ),
                      ),
                    ),
                    // ========
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Text(
                          "1st trimester / 228 days left",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Color.fromARGB(200, 87, 87, 87),
                          ),
                        ),
                      ),
                    ),
                    // =================------=================
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Text(
                          "Baby dimensions",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: Color.fromARGB(255, 55, 165, 144),
                          ),
                        ),
                      ),
                    ),
                    // ====================
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border(
                              right: BorderSide(
                                color: Colors.black,
                              ),
                            ),
                          ),
                          margin: EdgeInsets.only(top: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 20, left: 10),
                                child: Text(
                                  "Length",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: const Color.fromARGB(
                                          255, 49, 49, 49)),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 20, left: 10),
                                child: Text(
                                  "1.2 cm",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 173, 102, 102),
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Weight",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.black),
                              ),
                              Text(
                                "0.5-1 g",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromARGB(255, 173, 102, 102),
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border(
                                  left: BorderSide(
                                      color: const Color.fromARGB(
                                          255, 49, 49, 49)))),
                          margin: EdgeInsets.only(top: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 20),
                                child: Text(
                                  "Size of",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                      fontSize: 16),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 20),
                                child: Text(
                                  "Blueberry",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromARGB(255, 173, 102, 102),
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              // ===================== daily update =================================
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 15, left: 20, right: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromARGB(255, 249, 200, 200),
                    ),
                    height: 154,
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 18, top: 20),
                          child: Text(
                            "Daily Update",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              color: Color.fromARGB(255, 173, 102, 102),
                            ),
                          ),
                        ),
                        //======================
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 15, left: 20, right: 20),
                          child: Text(
                            "The egg is fertilized by sperm, forming a zygote.",
                            style:
                                TextStyle(fontSize: 16, color: Colors.black54),
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    right: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            bottomLeft: Radius.circular(15)),
                        color: const Color.fromARGB(255, 55, 165, 144),
                      ),
                      margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                      width: 120,
                      height: 40,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "March 10",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),

              // ===================== pregnacy tools ===============================

              Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 15),
                alignment: Alignment.centerLeft,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10,bottom: 10),
                      child: Text(
                        "Pregnancy Tools",
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                      ),
                    ),
                    GridView.count(
                      shrinkWrap: true,
                      crossAxisCount: 3,
                      children: List.generate(6, (index) {
                        if (index < iconData.length) {
                          return Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 249, 200, 200),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            margin: EdgeInsets.all(5),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(iconData[index]['path']),
                                  Text(iconData[index]['name']),
                                ],
                              ),
                            ),
                          );
                        } else {
                          // Placeholder container if iconData doesn't have enough elements
                          return Container();
                        }
                      }),
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
