import 'package:flutter/material.dart';

class DetailView extends StatefulWidget {
  DetailView({
    super.key,
    required this.count,
  });

  int count;

  @override
  State<DetailView> createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  @override
  Widget build(BuildContext context) {
    print('build metod');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context, widget.count);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text('DetailView'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${widget.count}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            widget.count--;
          });
        },
        tooltip: 'Increment',
        child: const Icon(Icons.remove),
      ),
    );
  }
}
