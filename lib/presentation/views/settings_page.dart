import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vehicle_reseller/data/model/user/user.dart';
import 'package:vehicle_reseller/presentation/blocs/user/user_bloc.dart';
import 'package:vehicle_reseller/presentation/widgets/divider_with_text.dart';
import 'package:vehicle_reseller/presentation/widgets/text_field_widget.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {},
        child: const Icon(Icons.add),
      ),
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
          children: [
            BlocBuilder<UserBloc, UserState>(
              builder: (context, state) {
                if (state is ReceivedUserData) {
                  return _buldProfileCard(context, state.user);
                }
                return const SizedBox.shrink();
              },
            ),
            _buildPersonalFormDialog(context),
            const SizedBox(height: 10.0),
            _buildSettingCard(),
            const SizedBox(height: 20.0),
            _buildNotificatinSettings(),
          ],
        ),
      ),
    );
  }

  _buildNotificatinSettings() {
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

  _buildSettingCard() {
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

  _buldProfileCard(BuildContext context, User user) {
    return Column(
      children: [
        InkWell(
          child: Card(
            elevation: 8.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            color: const Color.fromARGB(255, 225, 225, 225),
            child: ListTile(
              onTap: () {
                //open edit profile
              },
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    user.name.toUpperCase(),
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 5),
                  _buildDivider(),
                  const SizedBox(height: 5),
                  Text(
                    user.phone,
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const SizedBox(height: 5),
                  _buildDivider(),
                  const SizedBox(height: 5),
                  Text(
                    user.email.toLowerCase(),
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
              trailing: IconButton(
                onPressed: () {
                  setState(() {
                    isVisible = !isVisible;
                  });
                },
                icon: const Icon(Icons.edit),
              ),
            ),
          ),
        ),
      ],
    );
  }

  _buildPersonalFormDialog(BuildContext context) {
    UserBloc bloc = BlocProvider.of<UserBloc>(context);
    return Visibility(
      visible: isVisible,
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
              controller: bloc.tecName,
            ),
            const SizedBox(height: 15),
            TextFieldWidget(
              icon: FontAwesomeIcons.mobile,
              hintText: '9800000000',
              labelText: 'Phone',
              controller: bloc.tecPhone,
            ),
            const SizedBox(height: 15),
            TextFieldWidget(
              icon: FontAwesomeIcons.envelope,
              hintText: 'youremail@gmail.com',
              labelText: 'E-mail',
              controller: bloc.tecEmail,
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                    ),
                    onPressed: () {
                      showDialog(
                          context: context,
                          barrierDismissible: false, // user must tap button!
                          builder: (BuildContext context) {
                            return BlocProvider(
                              create: (context) => bloc..add(UpdateUser()),
                              child: BlocBuilder<UserBloc, UserState>(
                                builder: (context, state) {
                                  if (state is UpdatedUser) {
                                    return _buildAlert(context, state);
                                  }
                                  return Container();
                                },
                              ),
                            );
                          }
                          //return const SizedBox.shrink();

                          );
                    },
                    child: const Text('UPDATE')),
              ),
            ),
          ],
        ),
      ),
    
    );
  }

  _buildDivider() {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 8.0,
      ),
      width: double.infinity,
      height: 1.0,
      color: Colors.grey.shade400,
    );
  }

  _buildAlert(BuildContext context, UpdatedUser state) {
    return AlertDialog(
      backgroundColor: (state.isUpdate == true)
          ? const Color.fromARGB(255, 59, 139, 62)
          : Colors.red,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          (state.isUpdate == true)
              ? const Icon(
                  Icons.check,
                  size: 35,
                  color: Colors.white,
                )
              : const Icon(
                  Icons.error,
                  size: 35,
                  color: Colors.white,
                ),
          const SizedBox(width: 10),
          Text(
            (state.isUpdate == true) ? 'SUCCESSFUL !!!' : 'UN-SUCESSFUL !!!',
            style: const TextStyle(fontSize: 20, color: Colors.white),
          ),
        ],
      ),
      content: Text(state.message),
      actions: <Widget>[
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.green,
          ),
          onPressed: () {
            Navigator.of(context).pushNamed(
              '/',
            );
          },
          child: Row(
            children: const [
              Icon(Icons.home),
              SizedBox(width: 5),
              Text('Home'),
            ],
          ),
        ),
      ],
    );
  }

}
