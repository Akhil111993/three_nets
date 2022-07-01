import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/get_utils/get_utils.dart';

import '../Services/firebase_register.dart';
import '../Services/login_to_firebase.dart';
import '../constants.dart';
import 'alert_box_password.dart';

class LoginAlert extends StatefulWidget {
  User? user;
  LoginAlert({Key? key, this.user}) : super(key: key);

  @override
  State<LoginAlert> createState() => _LoginAlertState();
}

class _LoginAlertState extends State<LoginAlert> {
  String _email = '';
  String _password = '';
  bool isLoading = false;

  TextEditingController? emailController;
  TextEditingController? passwordController;
  final _formKey = GlobalKey<FormState>();
  bool isLogin = true;

  Future<void> registerOnFirebase() async {
    if (_formKey.currentState!.validate()) {
      final firebaseEmailPasswordLogin = FirebaseEmailPasswordRegister();
      _formKey.currentState?.save();
      if (_email.isNotEmpty && _password.isNotEmpty) {
        print('firebase started');
        UserCredential? userCredential = await firebaseEmailPasswordLogin
            .createUserWithEmailAndPassword(_email, _password);
        Navigator.pop(context, 'OK');
        setState(() {
          widget.user = userCredential?.user;
        });
      }

      emailController?.clear();
      passwordController?.clear();
    }
    setState(() {
      isLoading = false;
    });
  }

  signInToFirebase() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState?.save();
      if (_email.isNotEmpty && _password.isNotEmpty) {
        final firebaseEmailPasswordLogin = LoginToFirebase(_email, _password);
        User? user = await firebaseEmailPasswordLogin.LoginToFB();
        Navigator.pop(context, 'OK');
        setState(() {
          widget.user = user;
        });
      }
      emailController?.clear();
      passwordController?.clear();
    }
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 40.0),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                  onTap: () {
                    setState(() {
                      isLogin = true;
                    });
                  },
                  child: const Text('Login')),
              Container(
                width: 100.0,
                height: 5.0,
                decoration: BoxDecoration(
                  color: isLogin == true ? Colors.red : Colors.white,
                  borderRadius: BorderRadius.circular(2.5),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                  onTap: () {
                    setState(() {
                      isLogin = false;
                    });
                  },
                  child: const Text('Register')),
              Container(
                width: 100.0,
                height: 5.0,
                decoration: BoxDecoration(
                  color: isLogin == false ? Colors.red : Colors.white,
                  borderRadius: BorderRadius.circular(2.5),
                ),
              ),
            ],
          ),
        ],
      ),
      content: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 5.0,
            ),
            TextFormField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.person),
                hintText: 'Email',
                labelText: 'Email',
                enabledBorder: kLoginNormalBorder,
                focusedBorder: kLoginFocusedBorder,
              ),
              textInputAction: TextInputAction.next,
              onSaved: (value) {
                print('onsaved email = $_email');
                _email = value ?? '';
              },
              validator: (String? value) {
                return (value != null &&
                        value.isEmpty &&
                        GetUtils.isEmail(value))
                    ? 'Please enter a valid email'
                    : null;
              },
            ),
            const SizedBox(
              height: 20,
            ),
            LoginAlertPassword(passwordController, (value) {
              _password = value;
            }),
          ],
        ),
      ),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(bottom: 20.0, right: 10.0),
          child: !isLoading
              ? TextButton(
                  onPressed: () {
                    setState(() {
                      isLoading = true;
                    });
                    isLogin == true ? signInToFirebase() : registerOnFirebase();
                  },
                  child: Text(
                    isLogin == true ? 'Login' : 'Register',
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              : const CircularProgressIndicator(),
        ),
      ],
    );
  }
}
