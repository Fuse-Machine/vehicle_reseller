import 'package:flutter/material.dart';

// ignore: must_be_immutable
class IconCard extends StatelessWidget {
  Color backgroundColor;
  String title;
  IconData icon;
  VoidCallback onTap;
  IconCard({
    Key? key,
    required this.backgroundColor,
    required this.title,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        height: 175,
        width: 160,
        child: Card(
          color: backgroundColor,
          elevation: 10,
          shadowColor: Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Positioned(
                  // right: 25,
                  // //left: 25,
                  bottom: 20,
                  child: Column(
                    children: [
                      Text(
                        title,
                        style: const TextStyle(fontSize: 25),
                      ),
                    ],
                  ),
                ),

                Positioned(
                  right: 15,
                  top: 15,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 25,
                    child: Icon(icon),
                  ),
                ),

                // CircleAvatar(
                //   child: Icon(Icons.food_bank),
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
