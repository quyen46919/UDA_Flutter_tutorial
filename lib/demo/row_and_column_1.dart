import 'package:flutter/material.dart';

class RowAndColumn1 extends StatelessWidget {
  const RowAndColumn1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Joel and Alisha'),
              Container(
                width: 30.0,
                height: 30.0,
                color: Colors.red,
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('avatar'),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Comment 1'),
                      Text('Comment 2 Comment 2'),
                      Text('Comment 3'),
                      Text('Comment 4 Comment 2'),
                      Text('Comment 5'),
                      Text('Comment 6 Comment 2 Comment 2'),
                    ],
                  )
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Text('Comment 1'),
                      Text('Comment 2 Comment 2'),
                      Text('Comment 3'),
                      Text('Comment 4 Comment 2'),
                      Text('Comment 5'),
                      Text('Comment 6 Comment 2 Comment 2'),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                child: Text('Joel and Alisha Joel and Alisha Joel and Alisha Joel and Alisha Joel '
                    'and AlishaJoel and AlishaJoel and AlishaJoel and Alisha Joel and Alisha Joel and Alisha Joel and Alisha Joel and Alisha Joel '
                    'and AlishaJoel and AlishaJoel and AlishaJoel and Alisha'),
              ),
              const SizedBox(width: 20.0),
              Container(
                width: 30.0,
                height: 30.0,
                color: Colors.red,
              )
            ],
          ),
        ),
      ],
    );
  }
}
