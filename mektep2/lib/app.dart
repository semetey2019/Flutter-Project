import 'package:flutter/material.dart';

class MyTableContainer extends StatelessWidget {
  const MyTableContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Table(
        border: TableBorder.all(color: Color.fromARGB(255, 0, 0, 0)),
        columnWidths: const {
          0: FlexColumnWidth(1),
          1: FlexColumnWidth(1),
          2: FlexColumnWidth(1),
          3: FlexColumnWidth(1),
          4: FlexColumnWidth(1),
        },
        children: List.generate(
          10,
          (index) => TableRow(
            children: List.generate(
              5,
              (index2) => Container(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Cell $index,$index2',
                  style: const TextStyle(fontSize: 9.0),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
