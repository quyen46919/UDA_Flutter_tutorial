import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
  MyListView({Key? key}) : super(key: key);
  List<Widget> imageList = [
    Image.network( 'https://picsum.photos/250?image=1', fit: BoxFit.fill,),
    Image.network( 'https://picsum.photos/250?image=2', fit: BoxFit.fill,),
    Image.network( 'https://picsum.photos/250?image=3', fit: BoxFit.fill,),
    Image.network( 'https://picsum.photos/250?image=4', fit: BoxFit.fill),
    Image.network( 'https://picsum.photos/250?image=5', fit: BoxFit.fill),
    Image.network( 'https://picsum.photos/250?image=6', fit: BoxFit.fill),
    Image.network( 'https://picsum.photos/250?image=7', fit: BoxFit.fill),
    Image.network( 'https://picsum.photos/250?image=8', fit: BoxFit.fill),
    Image.network( 'https://picsum.photos/250?image=9', fit: BoxFit.fill),
    Image.network( 'https://picsum.photos/250?image=10', fit: BoxFit.fill),
    Image.network( 'https://picsum.photos/250?image=11', fit: BoxFit.fill),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView.separated(
        itemCount: 1000,
        reverse: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) => Image.network(
          'https://picsum.photos/250?image=${index+1}',
          fit: BoxFit.fill,
        ),
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}
