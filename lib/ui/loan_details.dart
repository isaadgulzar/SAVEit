import 'package:flutter/material.dart';

class LoanDetails extends StatefulWidget {
  @override
  _LoanDetailsState createState() => _LoanDetailsState();
}


class _LoanDetailsState extends State<LoanDetails> {
  List<String> loanRecords = ["Two","dsfs"];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        initialIndex: 0,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.grey.shade100,
            toolbarHeight: 50,
            bottom: TabBar(
              tabs: [
                Tab(text: 'Given'),
                Tab(text: 'Taken'),
              ],
              labelColor: Colors.redAccent,
              unselectedLabelColor: Colors.black,
              indicatorColor: Colors.redAccent,
            ),
          ),
          body: TabBarView(
              children: [
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 1.0,horizontal: 4.0),
                        child: Card(
                          child: ListTile(
                            leading: Icon(Icons.check_box_outline_blank),
                            title: Text('To: Saad Gulzar'),
                            subtitle: Text("Amount: Rs. 10,000"
                                "Date:05 oct, 2020  " "Date:10 oct, 2020  "),
                            isThreeLine: true,
                            trailing: Text('5 days'),
                            dense: true,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 1.0,horizontal: 4.0),
                        child: Card(
                          child: ListTile(
                            leading: Icon(Icons.check_box_outline_blank),
                            title: Text('To: Saad Gulzar'),
                            subtitle: Text("Amount: Rs. 10,000"
                                "Date:05 oct, 2020  " "Date:10 oct, 2020  "),
                            isThreeLine: true,
                            trailing: Text('5 days'),
                            dense: true,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 1.0,horizontal: 4.0),
                        child: Card(
                          child: ListTile(
                            leading: Icon(Icons.check_box_outline_blank),
                            title: Text('To: Saad Gulzar'),
                            subtitle: Text("Amount: Rs. 10,000"
                                "Date:05 oct, 2020  " "Date:10 oct, 2020  "),
                            isThreeLine: true,
                            trailing: Text('5 days'),
                            dense: true,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 1.0,horizontal: 4.0),
                        child: Card(
                          child: ListTile(
                            leading: Icon(Icons.check_box_outline_blank),
                            title: Text('To: Saad Gulzar'),
                            subtitle: Text("Amount: Rs. 10,000"
                                "Date:05 oct, 2020  " "Date:10 oct, 2020  "),
                            isThreeLine: true,
                            trailing: Text('5 days'),
                            dense: true,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 1.0,horizontal: 4.0),
                        child: Card(
                          child: ListTile(
                            leading: Icon(Icons.check_box_outline_blank),
                            title: Text('To: Saad Gulzar'),
                            subtitle: Text("Amount: Rs. 10,000"
                                "Date:05 oct, 2020  " "Date:10 oct, 2020  "),
                            isThreeLine: true,
                            trailing: Text('5 days'),
                            dense: true,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 1.0,horizontal: 4.0),
                        child: Card(
                          child: ListTile(
                            leading: Icon(Icons.check_box_outline_blank),
                            title: Text('To: Saad Gulzar'),
                            subtitle: Text("Amount: Rs. 10,000"
                                "Date:05 oct, 2020  " "Date:10 oct, 2020  "),
                            isThreeLine: true,
                            trailing: Text('5 days'),
                            dense: true,
                          ),
                        ),
                      ),
                    ],
                  ),

                ),
                Container(
                  child: Center(
                    child:  Text('Coming Soon!'),
                  )
                ),
                // Text('data2')
                // ListView.separated(
                //     itemBuilder: (BuildContext context,index) {
                //       return Text('$index');
                //     },
                //     separatorBuilder: (_,i) => Divider(),
                //     itemCount: loanRecords.length,
                // )
              ]
          ),
        )
    );
  }
}
