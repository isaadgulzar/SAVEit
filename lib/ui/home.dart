import 'package:SAVEit/ui/add_new.dart';
import 'package:SAVEit/ui/loan_details.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 1;
  final tabs = [
    Center( child: AddNew()),
    Center( child: LoanDetails()),
    Center( child: Text('Updating Soon!')),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SAVEit'),
        backgroundColor: Colors.redAccent,
        actions: [
          IconButton(icon: Icon(Icons.person, color: Colors.white)),
          IconButton(icon: Icon(Icons.more_vert,color: Colors.white,))
        ],
      ),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.create), label: 'Add New'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Loan Details'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'Notifications'),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        backgroundColor: Colors.redAccent,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
      ),
    );
  }
}
