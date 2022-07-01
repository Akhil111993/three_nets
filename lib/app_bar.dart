import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:three_nets/Screens/Docs%20Screen/docs_screen.dart';
import 'package:three_nets/widgets/appbar_btn.dart';
import 'package:three_nets/widgets/login_alert_box.dart';
import 'package:three_nets/widgets/text_with_down_arrow.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  User? userX;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        setState(() {
          userX = null;
        });

        print('User is currently signed out!');
      } else {
        print('User is signed in!');

        setState(() {
          userX = user;
        });
      }
    });
  }

  logoutOfFirebase() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0.0),
      height: 65.0,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Icon(Icons.insert_emoticon_sharp),
              const Text(
                'HashiCorp',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 50.0),
              TextWithDownArrow('Products'),
              TextWithDownArrow('Solutions'),
              TextWithDownArrow('Company'),
              const Text(
                'Partners',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 20.0,
              ),
              const Text(
                'Events',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            children: [
              TextWithDownArrow('Resources'),
              TextWithDownArrow('Success & Support'),
              Builder(builder: (_) {
                return userX != null
                    ? InkWell(
                        onTap: () {
                          // Get.to(DocScreen(
                          //     isUserNull: userX != null ? false : true));

                          DocScreen.isUserNull = false;
                          Navigator.pushNamed(
                              context, DocScreen.docScreenRoute);
                        },
                        child: Row(
                          children: const [
                            Text(
                              'Docs',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                          ],
                        ),
                      )
                    : const SizedBox();
              }),
              AppBarButton(function: () {}, text: 'Contact Sales'),
              const SizedBox(
                width: 20.0,
              ),
              AppBarButton(
                  function: () {
                    userX != null
                        ? logoutOfFirebase()
                        : showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return LoginAlert(
                                user: userX,
                              );
                            },
                          );
                  },
                  text: userX == null ? 'Login' : 'Logout'),
            ],
          ),
        ],
      ),
    );
  }
}
