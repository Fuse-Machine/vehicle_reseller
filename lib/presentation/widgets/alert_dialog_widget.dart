import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore: must_be_immutable
class AlertDialogWidget extends StatelessWidget {
  String status;
  String message;
  AlertDialogWidget({Key? key, required this.status, required this.message})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      child: SizedBox(
        height: 250,
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    '${status.toUpperCase()} !!!',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: (status.toLowerCase() == 'success')
                            ? Colors.green
                            : (status.toLowerCase() == 'info')
                                ? Colors.blue
                                : Colors.red),
                  ),
                  Container(
                    color: Colors.white70,
                    child: Icon(
                      FontAwesomeIcons.thumbsUp,
                      color: (status.toLowerCase() == 'success')
                          ? Colors.green
                          : (status.toLowerCase() == 'info')
                              ? Colors.blue
                              : Colors.red,
                      size: 60,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: (status.toLowerCase() == 'success')
                    ? Colors.green
                    : (status.toLowerCase() == 'info')
                        ? Colors.blue
                        : Colors.red,
                child: SizedBox.expand(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          message,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                            ),
                            child: Text(
                              'Go HOME',
                              style: TextStyle(
                                  color: (status.toLowerCase() == 'success')
                                      ? Colors.green
                                      : (status.toLowerCase() == 'info')
                                          ? Colors.blue
                                          : Colors.red),
                            ),
                            onPressed: () =>
                                {Navigator.of(context).pushNamed('/')},
                          ),
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
    );
  }
}
