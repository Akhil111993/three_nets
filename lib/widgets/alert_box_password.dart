import 'dart:js' as js;

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';

import '../constants.dart';

class LoginAlertPassword extends StatefulWidget {
  final ValueChanged<String> onChanged;
  TextEditingController? PasswordController;
  LoginAlertPassword(
    this.PasswordController,
    this.onChanged, {
    Key? key,
  }) : super(key: key);

  @override
  State<LoginAlertPassword> createState() => _LoginAlertPasswordState();
}

class _LoginAlertPasswordState extends State<LoginAlertPassword> {
  String? _password;
  bool _passwordVisible = true;
  FocusNode passwordFocusNode = FocusNode();

  //Edge browser showing password eye icon. This behavior is unwanted and to remove that this function is called
  void fixEdgePasswordRevealButton(FocusNode passwordFocusNode) {
    passwordFocusNode.unfocus();
    Future.microtask(() {
      passwordFocusNode.requestFocus();
      js.context.callMethod("fixPasswordCss", []);
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.PasswordController,
      obscureText: _passwordVisible,
      onChanged: (_) async {
        kIsWeb ? fixEdgePasswordRevealButton(passwordFocusNode) : null;
      },
      focusNode: kIsWeb ? passwordFocusNode : null,
      decoration: InputDecoration(
          hintText: 'Password',
          labelText: 'Password',
          enabledBorder: kLoginNormalBorder,
          focusedBorder: kLoginFocusedBorder,
          prefixIcon: const Icon(Icons.password),
          suffixIcon: IconButton(
            icon: Icon(
              _passwordVisible ? Icons.visibility : Icons.visibility_off,
            ),
            onPressed: () {
              setState(() {
                _passwordVisible = !_passwordVisible;
              });
            },
          )),
      onSaved: (String? value) {
        _password = value!;
        widget.onChanged(value);
      },
      validator: (String? value) {
        return (value != null && value.isEmpty)
            ? 'Please enter a valid Password'
            : null;
      },
    );
  }
}
