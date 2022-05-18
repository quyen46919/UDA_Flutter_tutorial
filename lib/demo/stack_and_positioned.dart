import 'package:flutter/material.dart';

class StackPositioned extends StatelessWidget {
  const StackPositioned({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(height: 10.0),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          width: MediaQuery.of(context).size.width,
          height: 50.0,
          child: Stack(
            children: [
              Positioned(
                left: -25.0,
                child: Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle
                  ),
                ),
              )
            ],
          )
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
          height: 400.0,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                top: 120.0,
                child: Transform(
                  transform: Matrix4.skewY(-0.1),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 80.0,
                    color: Colors.pink,
                  ),
                ),
              ),
              Image.asset('assets/images/person-removebg-preview.png', width: MediaQuery.of(context).size.width,),
              Positioned(
                bottom: 30.0,
                child: Transform(
                  transform: Matrix4.skewY(-0.1),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 80.0,
                    color: Colors.cyan,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
