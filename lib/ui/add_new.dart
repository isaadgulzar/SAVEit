import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddNew extends StatefulWidget {
  @override
  _AddNewState createState() => _AddNewState();
}

class _AddNewState extends State<AddNew> {
  final _addFormKey = GlobalKey<FormState>();
  String selectedValue = 'Giving Loan';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Form(
              key: _addFormKey,
              child: Column(
                children: [
                  Container(
                    child: Padding(
                      padding: EdgeInsets.only(left: 15.0,top: 25.0,right: 15.0,bottom: 15.0),
                      child: Text('Add New Record',
                        style: TextStyle(
                            color: Colors.redAccent,
                            fontSize: 30,
                            fontWeight: FontWeight.w300
                        ),),
                    ),
                  ),
                  Container(
                    child: Padding(
                        padding: EdgeInsets.only(left: 15.0,top: 0.0,right: 15.0,bottom: 15.0),
                        child: DropdownButtonFormField(
                          value: selectedValue,
                          onChanged: (String newValue) {
                            setState(() {
                              selectedValue = newValue;
                            });
                          },
                          items: <String>['Giving Loan', 'Taking Loan']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        )
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: EdgeInsets.only(left: 15.0,top: 5.0,right: 15.0,bottom: 0.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Person Name',
                        ),
                        // ignore: missing_return
                        validator: (value) {
                          if(value.isEmpty) {
                            return 'Please Enter Name';
                          }
                        },
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: EdgeInsets.only(left: 15.0,top: 5.0,right: 15.0,bottom: 0.0),
                      child: TextFormField(
                        keyboardType: TextInputType.numberWithOptions(decimal: true),
                        decoration: InputDecoration(
                          labelText: 'Amount',
                        ),
                        // ignore: missing_return
                        validator: (value) {
                          if(value.isEmpty) {
                            return 'Please Enter Amount';
                          }
                        },
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: EdgeInsets.only(left: 15.0,top: 5.0,right: 15.0,bottom: 0.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Purpose',
                        ),
                      ),
                    ),
                  ),
                  Container(
                      child: Padding(
                        padding: EdgeInsets.only(left: 15.0,top: 20.0,right: 15.0,bottom: 0.0),
                        child: RaisedButton(
                          onPressed: () {
                            if(_addFormKey.currentState.validate()){
                              Scaffold.of(context)
                                  .showSnackBar(SnackBar(content: Text('Record Added.')));
                              _addFormKey.currentState.reset();
                            }
                          },
                          child: Text('Add Record',style: TextStyle(color: Colors.white),),
                          color: Colors.redAccent,
                        ),
                      )
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
