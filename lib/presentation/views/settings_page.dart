import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vehicle_reseller/presentation/widgets/divider_with_text.dart';
import 'package:vehicle_reseller/presentation/widgets/text_field_widget.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        title: const Text(
          'Setting',
        ),
        backgroundColor: const Color.fromARGB(255, 225, 225, 225),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buldProfileCard(context),
            const SizedBox(height: 10.0),
            _buildSettingCard(),
            const SizedBox(height: 20.0),
            _buildNotificatinSettings(),
          ],
        ),
      ),
    );
  }

  Column _buildNotificatinSettings() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Notification Settings",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.indigo,
          ),
        ),
        SwitchListTile(
          inactiveThumbColor: Colors.grey,
          //activeColor: Colors.purple,
          contentPadding: const EdgeInsets.all(0),
          value: true,
          title: const Text("Received notification"),
          onChanged: (val) {},
        ),
      ],
    );
  }

  Card _buildSettingCard() {
    return Card(
      elevation: 4.0,
      margin: const EdgeInsets.fromLTRB(32.0, 8.0, 32.0, 16.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: const Icon(
              FontAwesomeIcons.language,
              //color: Colors.purple,
            ),
            title: const Text("Change Language"),
            trailing: const Icon(Icons.keyboard_arrow_right),
            onTap: () {
              //open change language
            },
          ),
          _buildDivider(),
        ],
      ),
    );
  }

  Card _buldProfileCard(BuildContext context) {
    return Card(
      elevation: 8.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      color: const Color.fromARGB(255, 225, 225, 225),
      child: ListTile(
        onTap: () {
          //open edit profile
        },
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Krishna Bdr. Shrestha",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 5),
            _buildDivider(),
            const SizedBox(height: 5),
            const Text(
              "9841705845",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w300,
              ),
            ),
            const SizedBox(height: 5),
            _buildDivider(),
            const SizedBox(height: 5),
            const Text(
              "krishna705844@gmail.com",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
        trailing: IconButton(
          color: Colors.black,
          onPressed: () {
            _buildPersonalFormDialog(context);
          },
          icon: const Icon(Icons.edit),
        ),
      ),
    );
  }

  Future<dynamic> _buildPersonalFormDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: const Color.fromARGB(255, 225, 225, 225),
            content: SizedBox(
              height: 350,
              child: Card(
                elevation: 10,
                color: const Color.fromARGB(255, 225, 225, 225),
                shadowColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      DividerWithText(text: 'Personal\'s Details'),
                      const SizedBox(height: 15),
                      TextFieldWidget(
                        icon: FontAwesomeIcons.user,
                        hintText: 'Your Full name',
                        labelText: 'Name',
                        controller: TextEditingController(),
                      ),
                      const SizedBox(height: 15),
                      TextFieldWidget(
                        icon: FontAwesomeIcons.mobile,
                        hintText: '9800000000',
                        labelText: 'Phone',
                        controller: TextEditingController(),
                      ),
                      const SizedBox(height: 15),
                      TextFieldWidget(
                        icon: FontAwesomeIcons.envelope,
                        hintText: 'youremail@gmail.com',
                        labelText: 'E-mail',
                        controller: TextEditingController(),
                      ),
                      const SizedBox(height: 15),
                      _buildSubmitButton(context),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }

  Container _buildDivider() {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 8.0,
      ),
      width: double.infinity,
      height: 1.0,
      color: Colors.grey.shade400,
    );
  }

  _buildSubmitButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 50,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.green,
            ),
            onPressed: () {},
            child: const Text('UPDATE')),
      ),
    );
  }
}
