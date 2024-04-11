import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
        );
  }
}
