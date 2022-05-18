import 'package:flutter/material.dart';

class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 100,
      itemBuilder: (context, index) {
        return Container(
          padding: const EdgeInsets.all(10.0),
          color: Colors.white10,
          child: Image.network(
            'https://picsum.photos/250?image=${index+1}',
            fit: BoxFit.fill,
            errorBuilder: (BuildContext context, Object exception, stackTrace) {
              return const Text('Failed loading 😢', style: TextStyle(fontSize: 60.0),);
            },
            loadingBuilder: (BuildContext context, Widget child,
                ImageChunkEvent? loadingProgress) {
              if (loadingProgress == null) return child;
              return Center(
                child: CircularProgressIndicator(
                  value: loadingProgress.expectedTotalBytes != null
                      ? loadingProgress.cumulativeBytesLoaded /
                      loadingProgress.expectedTotalBytes!
                      : null,
                ),
              );
            },
          ),
        );
    }, separatorBuilder: (BuildContext context, int index) => const Divider(),);
  }
}
