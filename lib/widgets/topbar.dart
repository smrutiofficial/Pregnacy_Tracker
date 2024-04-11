import 'package:flutter/material.dart';

class TopAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Icon(
          Icons.grid_view_rounded,
          size: 28,
          color: const Color.fromARGB(255, 45, 45, 45),
        ),
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
                color: const Color.fromARGB(255, 33, 33, 33),
              ),
            ),
            TextSpan(
              text: "22 nov",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
                color: Colors.black,
              ),
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
    );
  }
}
