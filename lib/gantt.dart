import 'package:flutter/material.dart';

class GanttChartWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gantt Chart'),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Table(
              border: TableBorder.all(),
              columnWidths: {
                0: FlexColumnWidth(1),
                1: FlexColumnWidth(2),
                2: FlexColumnWidth(2),
              },
              children: [
                TableRow(
                  children: [
                    TableCell(child: Text('Task')),
                    TableCell(child: Text('Start Date')),
                    TableCell(child: Text('End Date')),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(child: Text('Task 1')),
                    TableCell(child: Text('2022-07-01')),
                    TableCell(child: Text('2022-07-10')),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(child: Text('Task 2')),
                    TableCell(child: Text('2022-07-05')),
                    TableCell(child: Text('2022-07-15')),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(child: Text('Task 3')),
                    TableCell(child: Text('2022-07-12')),
                    TableCell(child: Text('2022-07-20')),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gantt Chart Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GanttChartWidget(),
    );
  }
}
