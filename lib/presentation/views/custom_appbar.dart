import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomAppbar extends StatelessWidget {
  String appbarTitle;

  CustomAppbar({Key? key, required this.appbarTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 120,
          width: double.infinity,
          color: const Color.fromARGB(255, 125, 125, 125),
          child: Center(
            child: Text(
              appbarTitle.toUpperCase(),
              style: const TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
        ),
        Column(
          children: <Widget>[
            const SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Material(
                elevation: 5.0,
                borderRadius: const BorderRadius.all(Radius.circular(30)),
                child: TextField(
                  // controller: TextEditingController(text: locations[0]),
                  cursorColor: Theme.of(context).primaryColor,
                  style: const TextStyle(color: Colors.black, fontSize: 18),
                  decoration: InputDecoration(
                    hintText: "Search $appbarTitle",
                    hintStyle:
                        const TextStyle(color: Colors.black38, fontSize: 16),
                    prefixIcon: const Material(
                      elevation: 0.0,
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      child: Icon(Icons.search),
                    ),
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 13),
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
