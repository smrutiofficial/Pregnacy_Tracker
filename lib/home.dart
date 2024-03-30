import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Icon(Icons.grid_view_rounded,
                size: 28, color: const Color.fromARGB(255, 45, 45, 45)),
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 255, 223, 226),
          title: Container(
            decoration: BoxDecoration(
              border:
                  Border.all(color: Color.fromARGB(255, 63, 63, 63), width: 2),
              borderRadius: BorderRadius.circular(5),
            ),
            width: 130,
            height: 30,
            alignment: Alignment.center,
            child: Text.rich(
              TextSpan(children: [
                TextSpan(
                  text: "Due date ",
                  style: TextStyle(
                      fontSize: 12,
                      color: const Color.fromARGB(255, 33, 33, 33)),
                ),
                TextSpan(
                  text: "22 nov",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: Colors.black),
                ),
              ]),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: CircleAvatar(
                radius: 16,
                backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1534528741775-53994a69daeb?q=80&w=1964&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: Container(
          margin: EdgeInsets.only(bottom: 15, left: 15, right: 15),
          height: 65,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color.fromARGB(255, 41, 41, 46),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.home, color: Colors.white),
              SvgPicture.asset('assets/pizza.svg', color: Colors.white),
              SvgPicture.asset('assets/Group.svg', color: Colors.white),
              Icon(Icons.settings, color: Colors.white),
            ],
          ),
        ),
        backgroundColor: Color.fromARGB(255, 255, 223, 226),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 15),
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Daily Routine",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 105,
                          height: 65,
                          margin: EdgeInsets.only(top: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(255, 249, 200, 200),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                'assets/medicine.svg',
                                color: Color.fromARGB(255, 173, 102, 102),
                              ),
                              SizedBox(
                                height: 3,
                                width: 3,
                              ),
                              Text(
                                "Medicine",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 173, 102, 102),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 105,
                          height: 65,
                          margin: EdgeInsets.only(top: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(255, 249, 200, 200),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                'assets/food.svg',
                                color: Color.fromARGB(255, 173, 102, 102),
                              ),
                              SizedBox(
                                height: 3,
                                width: 3,
                              ),
                              Text(
                                "Food",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 173, 102, 102),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 105,
                          height: 65,
                          margin: EdgeInsets.only(top: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(255, 249, 200, 200),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Icon(Icons.sports_gymnastics_rounded),
                              SvgPicture.asset(
                                'assets/Group.svg',
                                color: Color.fromARGB(255, 173, 102, 102),
                              ),
                              SizedBox(
                                height: 3,
                                width: 3,
                              ),
                              Text(
                                "Yoga",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 173, 102, 102),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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
                    height: 150,
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 20),
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
                                TextStyle(fontSize: 18, color: Colors.black54),
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

              // ===================== child growth =================================
              Container(
                margin: EdgeInsets.only(top: 15, left: 20, right: 20),
                height: 400,
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
                                margin: EdgeInsets.only(right: 20,left: 10),
                                child: Text(
                                  "LENGTH",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: const Color.fromARGB(255, 49, 49, 49)),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 20,left: 10),
                                child: Text(
                                  "1.2 cm",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
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
                                "WIDTH",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
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
                                  left: BorderSide(color: const Color.fromARGB(255, 49, 49, 49)))),
                          margin: EdgeInsets.only(top: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 20),
                                child: Text(
                                  "SIZE OF",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                      fontSize: 14),
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
              )
              // ===================== pregnacy tools ===============================
            ],
          ),
        ),
      ),
    );
  }
}
