import 'package:flutter/material.dart';
import 'package:vehicle_reseller/data/model/owner/owner.dart';

// ignore: must_be_immutable
class NameCard extends StatelessWidget {
  Owner owner;
  NameCard({Key? key, required this.owner}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        // height: 125,
        width: MediaQuery.of(context).size.width,
        child: Card(
          color: const Color.fromARGB(255, 225, 225, 225),
          elevation: 10,
          shadowColor: Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  owner.name,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Divider(
                  thickness: 4,
                  indent: 70,
                ),
                const SizedBox(height: 10),
                Text(owner.phone),
                const SizedBox(height: 10),
                Text(owner.email!),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
