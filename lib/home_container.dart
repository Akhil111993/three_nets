import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomeContainer extends StatefulWidget {
  const HomeContainer({Key? key}) : super(key: key);

  @override
  State<HomeContainer> createState() => _HomeContainerState();
}

class _HomeContainerState extends State<HomeContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
      height: 650.0,
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          center: Alignment(-1.2, 0.0), // near the top right
          radius: 1.0,
          colors: <Color>[
            Color(0xFF252525),
            Color(0xFF000000),
          ],
          stops: <double>[0.5, 1.0],
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 620.0,
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'The easiest way to automate the cloud',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 45.0,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Padding(
                          padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                          child: Text(
                            'Try cloud for free',
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 100.0, left: 100.0, bottom: 100.0),
                    child: Lottie.asset('assets/template.json'),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 30.0,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0)),
            ),
          ),
        ],
      ),
    );
  }
}
