import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'home.dart';

void main() {
  runApp(const Initpage());
}

class Initpage extends StatelessWidget {
  const Initpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Pregnancy Tracker",
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  MyHomeState createState() => MyHomeState();
}

class MyHomeState extends State<MyHome> {
  DateTime? selectedDate;
  DateTime? dueDate;

  void calculateDueDate(DateTime lastPeriodStart) {
    setState(() {
      dueDate = lastPeriodStart.add(const Duration(days: 40 * 7));
    });
  }

  int calculatePregnancyWeek(DateTime dueDate) {
    final currentDate = DateTime.now();
    final differenceInDays = dueDate.difference(currentDate).inDays;
    final differenceInWeeks = ((40 * 7 - differenceInDays) / 7).ceil();
    return differenceInWeeks;
  }

  @override
  Widget build(BuildContext context) {
    int? pregnancyWeek;
    if (dueDate != null) {
      pregnancyWeek = calculatePregnancyWeek(dueDate!);
    }

    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 255, 223, 226),
        child: WelcomeMessage(
          onSelectDate: (newSelectedDate) {
            setState(() {
              selectedDate = newSelectedDate;
              if (selectedDate != null) {
                calculateDueDate(selectedDate!);
              }
            });
          },
          dueDate: dueDate,
          selectedDate: selectedDate,
          pregnancyWeek: pregnancyWeek,
        ),
      ),
    );
  }
}
Future<bool> checkIfDataExists() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.containsKey('selectedDate') &&
      prefs.containsKey('dueDate') &&
      prefs.containsKey('pregnancyWeek');
}


class WelcomeMessage extends StatelessWidget {
  final Function(DateTime)? onSelectDate;
  final DateTime? dueDate;
  final DateTime? selectedDate;
  final int? pregnancyWeek;

  const WelcomeMessage({
    Key? key,
    this.onSelectDate,
    this.dueDate,
    this.selectedDate,
    this.pregnancyWeek,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 28, top: 50),
          child: Text(
            "Welcome To",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 22,
              color: Color.fromARGB(255, 67, 67, 67),
            ),
          ),
        ),
        const Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 28),
              child: Text(
                "Pregnancy ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Color.fromARGB(255, 67, 67, 67),
                ),
              ),
            ),
            Text(
              "Tracker",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Color.fromARGB(255, 255, 146, 146),
              ),
            ),
          ],
        ),
        Center(
          child: Image.asset(
            'assets/pre.png',
            width: 280,
            height: 280,
          ),
        ),
        Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "LAST PERIOD",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: Color.fromARGB(255, 255, 175, 175),
                  ),
                ),
                Text(
                  " STARTED",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: Color.fromARGB(255, 66, 66, 66),
                  ),
                )
              ],
            ),
            const SizedBox(
              width: 20,
              height: 20,
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromARGB(255, 31, 32, 35)),
                fixedSize: MaterialStateProperty.all<Size>(
                  const Size(200, 48), // Set your desired width and height
                ),
              ),
              onPressed: () async {
                DateTime? selectedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2021),
                  lastDate: DateTime(2025),
                );
                if (selectedDate != null) {
                  onSelectDate!(selectedDate);
                }
              },
              child: Text(selectedDate != null
                  ? DateFormat('d MMM yyyy').format(selectedDate!)
                  : 'Select Date'),
            ),
            if (dueDate != null)
              Container(
                margin: const EdgeInsets.only(top: 20),
                width: 280,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 255, 153, 146),
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment
                      .spaceBetween, // Aligns children to the start and end of the row
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "DUE DATE ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 153, 146),
                            fontWeight: FontWeight.w600,
                            fontSize: 20),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                        top: 8,
                        bottom: 8,
                        left: 15,
                        right: 15,
                      ),
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(
                            255, 255, 153, 146), // Background color red
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(5),
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        ), // Optional: adds rounded corners
                      ),
                      child: Text(
                        DateFormat('d MMM yyyy').format(dueDate!),
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

            // ======================== show current week ======================
            if (dueDate != null)
              Container(
                width: 320,
                height: 80,
                margin: const EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 236, 234),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    width: 3,
                    color: const Color.fromARGB(255, 78, 149, 102),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Congratulation !",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Color.fromARGB(255, 54, 110, 57)),
                    ),
                    Text(
                      pregnancyWeek != null
                          ? 'you are $pregnancyWeek weeks pregnant'
                          : '',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Color.fromARGB(255, 54, 110, 57)),
                    ),
                  ],
                ),
              )
          ],
        ),
        // ===================== save button  ================
        if (dueDate != null)
          Container(
            margin: const EdgeInsets.only(top: 30),
            child: Center(
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 31, 32, 35)),
                  fixedSize: MaterialStateProperty.all<Size>(
                    const Size(340, 55), // Set your desired width and height
                  ),
                ),
                onPressed: () async {
                  // Save data to shared preferences
                  SharedPreferences prefs =
                      await SharedPreferences.getInstance();
                  prefs.setString('selectedDate', selectedDate.toString());
                  prefs.setString('dueDate', dueDate.toString());
                  prefs.setInt('pregnancyWeek', pregnancyWeek ?? 0);
                  // Navigate to the next screen
                  // (You can replace 'HomeScreen()' with your actual home screen widget)
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => home()));
                },
                child: const Text("Save & Proceed",
                    style: TextStyle(fontSize: 18)),
              ),
            ),
          ),
      ],
    );
  }
}



