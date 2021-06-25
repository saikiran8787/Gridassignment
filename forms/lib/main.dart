import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:signature/signature.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late SignatureController controller;
  @override
  void initState() {
    super.initState();
    controller = SignatureController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  bool _unchecked = false;
  bool _checked = false;
  bool _check = false;
  bool _che = false;
  bool _10mg = false;
  bool _20mg = false;
  bool _does = false;
  bool _doesnt = false;
  bool _male = false;
  bool _female = false;
  bool _other = false;
  bool _fax = false;
  bool _mail = false;
  bool _email = false;
  bool _phone = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('GridLex'),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Form(
              child: Column(
                children: [
                  SizedBox(height: 10.0,),
                  Text(
                    'Medical Information Request Form',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Divider(
                    color: Colors.black,
                    thickness: 1.0,
                  ),
                  Text(
                    'A.Healthcare Proffesional Contact information:',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Divider(
                    color: Colors.black,
                    thickness: 1.0,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 220.0),
                    child: Text(
                      'Requestors First Name*',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'name',
                        labelText: 'First Name',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 220.0),
                    child: Text(
                      'Requestors Last Name*',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'name',
                        labelText: 'Last Name',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 290.0),
                    child: Text(
                      'Designation*',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    leading: Checkbox(
                        value: _unchecked,
                        onChanged: (value) {
                          setState(() {
                            _unchecked = value!;
                          });
                        }),
                    title: Text(
                      "MD",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    leading: Checkbox(
                        value: _checked,
                        onChanged: (value) {
                          setState(() {
                            _checked = value!;
                          });
                        }),
                    title: Text("DO",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  ListTile(
                    leading: Checkbox(
                        value: _check,
                        onChanged: (value) {
                          setState(() {
                            _check = value!;
                          });
                        }),
                    title: Text("NP",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  ListTile(
                    leading: Checkbox(
                        value: _che,
                        onChanged: (value) {
                          setState(() {
                            _che = value!;
                          });
                        }),
                    title: Text("PA",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 260.0),
                    child: Text(
                      'Institution/Office*',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Institution/office',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 280.0),
                    child: Text(
                      'Department*',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'department',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 180.0),
                    child: Text(
                      'Institution/Office Address Line*',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Institution/office Address Line 1',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 180.0),
                    child: Text(
                      'Institution/Office Address Line 2*',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Institution/office Address Line 2',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 320.0),
                    child: Text(
                      'State*',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'State',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 340.0),
                    child: Text(
                      'City*',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'City name',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 280.0),
                    child: Text(
                      'Phone Number*',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: TextFormField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'phone number',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 280.0),
                    child: Text(
                      'Fax Number*',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: TextFormField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'fax number',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 320.0),
                    child: Text(
                      'Email*',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter email',
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 2.0,
                    color: Colors.black,
                  ),
                  Text(
                    'B.Unsolicated Information Request:',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  Divider(
                    thickness: 2.0,
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 260.0),
                    child: Text(
                      'Choose Products:*',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    leading: Checkbox(
                        value: _10mg,
                        onChanged: (value) {
                          setState(() {
                            _10mg = value!;
                          });
                        }),
                    title: Text(
                      "10 MG - Roszet",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    leading: Checkbox(
                        value: _20mg,
                        onChanged: (value) {
                          setState(() {
                            _20mg = value!;
                          });
                        }),
                    title: Text(
                      "20 MG - Roszet",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 250.0),
                    child: Text(
                      'Request Description*',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.black,
                    thickness: 0.8,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 260.0),
                    child: Text(
                      'Please Check One*',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    leading: Checkbox(
                        value: _doesnt,
                        onChanged: (value) {
                          setState(() {
                            _doesnt = value!;
                          });
                        }),
                    title: Text(
                      "This inquiry does not represent an adverse event experienced by a patient",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    leading: Checkbox(
                        value: _does,
                        onChanged: (value) {
                          setState(() {
                            _does = value!;
                          });
                        }),
                    title: Text(
                      "This inquiry represent an adverse event experienced by a patient",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 280.0),
                    child: Text(
                      'Patient Name*',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'patient name'),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 340.0),
                    child: Text(
                      'DOB*',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), hintText: 'dd/mm/yyyy'),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 290.0),
                    child: Text(
                      'Gender:*',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    leading: Checkbox(
                        value: _male,
                        onChanged: (value) {
                          setState(() {
                            _male = value!;
                          });
                        }),
                    title: Text(
                      "Male",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    leading: Checkbox(
                        value: _female,
                        onChanged: (value) {
                          setState(() {
                            _female = value!;
                          });
                        }),
                    title: Text(
                      "Female",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    leading: Checkbox(
                        value: _other,
                        onChanged: (value) {
                          setState(() {
                            _other = value!;
                          });
                        }),
                    title: Text(
                      "Other",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 280.0),
                    child: Text(
                      'Date of Request*',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), hintText: 'dd/mm/yyyy'),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 180.0),
                    child: Text(
                      'Preffered Method of Response*',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    leading: Checkbox(
                        value: _fax,
                        onChanged: (value) {
                          setState(() {
                            _fax = value!;
                          });
                        }),
                    title: Text(
                      "Fax",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    leading: Checkbox(
                        value: _mail,
                        onChanged: (value) {
                          setState(() {
                            _mail = value!;
                          });
                        }),
                    title: Text(
                      "Mail",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    leading: Checkbox(
                        value: _email,
                        onChanged: (value) {
                          setState(() {
                            _email = value!;
                          });
                        }),
                    title: Text(
                      "Email",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    leading: Checkbox(
                        value: _phone,
                        onChanged: (value) {
                          setState(() {
                            _phone = value!;
                          });
                        }),
                    title: Text(
                      "Phone",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 150.0),
                    child: Text(
                      'Health Care Proffesional Signature*',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  DottedBorder(
                      child: Container(
                    height: 100,
                    width: 330,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                    
                      ],
                    ),
                  ),),
                  Divider(color: Colors.black,thickness: 0.9,),
 Text(
                    'C.Representative Contact Information:(To Be Completed By Representative)',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                                 Divider(color: Colors.black,thickness: 0.9,),
                                 SizedBox(height: 10.0,),
                                 Text('By Submitting This form, I certify that is request for information was intiated by Health Care Proffesional stated above,and was not solicated by me in any manner'),
                                 Divider(color: Colors.black,thickness: 0.9,),
                                  SizedBox(height: 10.0,),
                                   Padding(
                    padding: const EdgeInsets.only(right: 230.0),
                    child: Text(
                      'Representative Name*',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: ' Representative name',
                      
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0,),
                                   Padding(
                    padding: const EdgeInsets.only(right: 230.0),
                    child: Text(
                      'Representative Type*',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: ' Representative Type',
                      
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0,),
                                   Padding(
                    padding: const EdgeInsets.only(right: 150.0),
                    child: Text(
                      'Representative Territory Number*',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: ' Representative Territory Number',
                      
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0,),
                                   Padding(
                    padding: const EdgeInsets.only(right: 280.0),
                    child: Text(
                      'Country Code*',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: ' +1',
                      
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0,),
                                   Padding(
                    padding: const EdgeInsets.only(right: 150.0),
                    child: Text(
                      'Primary Telephone Number*',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Telephone number',
                      
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      // ignore: deprecated_member_use
                      Padding(
                        padding: const EdgeInsets.only(left: 150.0),
                        child: RaisedButton(onPressed: (){},child: Text('Submit',style: TextStyle(fontWeight: FontWeight.bold),),),
                      )
                    ],
                  )

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
