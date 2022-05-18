import 'package:flutter/material.dart';

class StackAndPositioned extends StatelessWidget {
  const StackAndPositioned({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 50.0,
            child: Stack(
              alignment: Alignment.bottomRight,
              fit: StackFit.loose,
              children: [
                Positioned(
                  left: -25,
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Container(
                  color: Colors.green,
                  child: const Text('sadj lsakdj sajdl saa jkdasl'),
                ),
              ],
            ),
          )
        ),
        Container(
          height: 500.0,
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                top: 100.0,
                child: Transform(
                  transform: Matrix4.skewY(-0.1),
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 120.0,
                      color: Colors.pink,
                  ),
                ),
              ),
              Positioned(
                top: 10.0,
                left: MediaQuery.of(context).size.width % 2,
                child: Image.asset(
                  'assets/images/person-removebg-preview.png',
                  width: MediaQuery.of(context).size.width,
                ),
              ),
              Positioned(
                bottom: 80.0,
                child: Transform(
                  transform: Matrix4.skewY(-0.1),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 120.0,
                    color: Colors.cyan,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
