import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vehicle_reseller/presentation/blocs/user/user_bloc.dart';
import 'package:vehicle_reseller/presentation/widgets/divider_with_text.dart';
import 'package:vehicle_reseller/presentation/widgets/text_field_widget.dart';

class UserForm extends StatelessWidget {
  const UserForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    UserBloc bloc = BlocProvider.of<UserBloc>(context);
    return Center(
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
          ],
        ),
      ),
    );
  }
}
