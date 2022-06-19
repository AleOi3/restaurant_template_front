import 'package:firstapp/src/components/appbar/index.dart';
import 'package:firstapp/src/components/textInput/index.dart';
import 'package:firstapp/src/contants/constants.dart';
import 'package:flutter/material.dart';
import '../../components/textInput/themes.dart';
import '../../language/language.dart';
import '../../components/buttons/index.dart';

class LoginPage extends StatelessWidget {
  late String _username;
  late String _password;

  LoginPage({Key? key}) : super(key: key);

  // String get username => _username;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarComponent(title: Constants.constants["AppName"], numberOfIcons: 0, tabsArray:[]),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20.0),
            // decoration: BoxDecoration(border: Border.all(color: Colors.red)),
          ),
          InputWithLabel(
            label: Language.languageLabel['pt']?['Username:'],
            callback: (valor) {
              this._username = valor;
            },
            style: TextLabelStyle.normalText,
            autocorrect: true,
            obscureText: false,
          ),
          InputWithLabel(
            label: Language.languageLabel['pt']?['Password:'],
            callback: (valor) {
              print("Verification o valor ${valor}");
              this._password = valor;
            },
            style: TextLabelStyle.normalText,
            autocorrect: false,
            obscureText: true,
          ),
          Container(
              // decoration: BoxDecoration(
              //   border: Border.all(color: Colors.blueAccent)
              // ),
              alignment: Alignment.bottomRight,
              child: HoverButton(
                text: Language.languageLabel['pt']?['Login'],
                onPress: () {
                  if (this._username == 'alexandre' &&
                      this._password == '12345') {
                    print('entrando aqui');
                    Navigator.pushNamed(context, '/home');
                  }
                },
              ))
        ],
      ),
    );
  }
}
