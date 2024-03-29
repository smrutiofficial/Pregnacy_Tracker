import 'package:flutter/material.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 223, 226),
        body: SingleChildScrollView(
          child: Column(
            children: [
              //navbar
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 28),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Icon(Icons.grid_view_rounded,
                              size: 35,
                              color: const Color.fromARGB(255, 45, 45, 45)),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          width: 150,
                          height: 30,
                          alignment: Alignment.center,
                          child: Text.rich(
                            TextSpan(children: [
                              TextSpan(
                                text: "Due date ",
                              ),
                              TextSpan(
                                text: "22 nov",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                            ]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://images.unsplash.com/photo-1534528741775-53994a69daeb?q=80&w=1964&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              //======================= gritting ======================
              Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: "Good Morning, ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                            TextSpan(
                              text: "Selena",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Color.fromARGB(255, 230, 107, 80)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                      width: 10,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        "https://assets.babycenter.com/ims/2018/06/pregnancy-week-6-webbed-hands_square.png",
                        width: 160,
                        height: 160,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),

              // ==================progreess bar=========================

              //=========================== current week data ===========

              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 20, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Week 1: Conception",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        "The egg is fertilized by sperm, forming a Zygote.",
                        textAlign: TextAlign.start,
                      ),
                    )
                  ],
                ),
              ),
              // =========================== daily routine ==============
              Container(
                margin: EdgeInsets.only(left: 15, right: 15, top: 15),
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Daily Routine",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 115,
                          height: 75,
                          margin: EdgeInsets.only(top: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(255, 249, 200, 200),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.watch_later_outlined),
                              SizedBox(
                                height: 3,
                                width: 3,
                              ),
                              Text("Medicine"),
                            ],
                          ),
                        ),
                        Container(
                          width: 115,
                          height: 75,
                          margin: EdgeInsets.only(top: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(255, 249, 200, 200),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.watch_later_outlined),
                              SizedBox(
                                height: 3,
                                width: 3,
                              ),
                              Text("Food"),
                            ],
                          ),
                        ),
                        Container(
                          width: 115,
                          height: 75,
                          margin: EdgeInsets.only(top: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(255, 249, 200, 200),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.watch_later_outlined),
                              SizedBox(
                                height: 3,
                                width: 3,
                              ),
                              Text("Yoga"),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 115,
                          height: 75,
                          margin: EdgeInsets.only(top: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(255, 249, 200, 200),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.watch_later_outlined),
                              SizedBox(
                                height: 3,
                                width: 3,
                              ),
                              Text("Medicine"),
                            ],
                          ),
                        ),
                        Container(
                          width: 115,
                          height: 75,
                          margin: EdgeInsets.only(top: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(255, 249, 200, 200),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.watch_later_outlined),
                              SizedBox(
                                height: 3,
                                width: 3,
                              ),
                              Text("Food"),
                            ],
                          ),
                        ),
                        Container(
                          width: 115,
                          height: 75,
                          margin: EdgeInsets.only(top: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(255, 249, 200, 200),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.watch_later_outlined),
                              SizedBox(
                                height: 3,
                                width: 3,
                              ),
                              Text("Yoga"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // ============================= my weight ================
              Container(
                margin: EdgeInsets.only(left: 15, right: 15, top: 15),
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "My Weight",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 115,
                          height: 95,
                          margin: EdgeInsets.only(top: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(255, 249, 200, 200),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "56",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 3,
                                width: 3,
                              ),
                              Text("When Start"),
                            ],
                          ),
                        ),
                        Container(
                          width: 115,
                          height: 95,
                          margin: EdgeInsets.only(top: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(255, 249, 200, 200),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "62",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 3,
                                width: 3,
                              ),
                              Text("Current \n Weight"),
                            ],
                          ),
                        ),
                        Container(
                          width: 115,
                          height: 95,
                          margin: EdgeInsets.only(top: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(255, 249, 200, 200),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "6",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 3,
                                width: 3,
                              ),
                              Text("Increased"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
