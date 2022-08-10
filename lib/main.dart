// ignore_for_file: deprecated_member_use, unnecessary_new
// ignore: avoid_web_libraries_in_flutter
//mport 'dart:html';

import 'package:flutter/material.dart';  
void main() => runApp(const MyApp());  
final TextEditingController namevalue=TextEditingController();
final TextEditingController phonevalue=TextEditingController();
final TextEditingController dobvalue  =TextEditingController();
final TextEditingController addressvalue =TextEditingController();
final TextEditingController natioinalityvalue= TextEditingController();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override  
  Widget build(BuildContext context) {  
    const appTitle = 'BIO DATA FORM ';
      
    
    return MaterialApp(  
      title: appTitle,
       
home: Scaffold(
  backgroundColor: Colors.orangeAccent,  
        appBar: AppBar(  
          title: const Text(appTitle),  
        ),  
        body: const MyCustomForm(),  
      ),  
    );  
  }  
}  
// Create a Form widget.  
class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key}) : super(key: key);
  
  @override  
  MyCustomFormState createState() {  
    return MyCustomFormState();  
  }  
}  

// Create a corresponding State class, which holds data related to the form.  
class MyCustomFormState extends State<MyCustomForm> {  
  // TextEditingController namevalue = new TextEditingController();
  // // ignore: unused_field
  
  
  
  // final TextEditingController phonevalue = new TextEditingController();
  // // ignore: unused_field
  // final TextEditingController _dob = new TextEditingController();
  // final TextEditingController _address = new TextEditingController();
  // final TextEditingController _nationality = new TextEditingController();
  
  get myController => null;
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }
  
  // Create a global key that uniquely identifies the Form widget  
  // and allows validation of the form.  
  final _formKey = GlobalKey<FormState>();  
  
  @override  
  Widget build(BuildContext context) {  
    // Build a Form widget using the _formKey created above.  
    return Form(  
      key: _formKey,  
      child: Column(  
        crossAxisAlignment: CrossAxisAlignment.start,  
        children: <Widget>[  
          TextFormField(  
            controller: namevalue,
            decoration: const InputDecoration(  
              icon: Icon(Icons.person),  
              hintText: 'Enter your name',  
              labelText: 'Name',  
            ),  
            validator: (value) {  
              if (value!.isEmpty) {  
                return ' Enter some text';  
              }  
              return null;  
            },  
          ),  
          TextFormField(  
            controller: phonevalue,
            decoration: const InputDecoration(  
              icon: Icon(Icons.phone),  
              hintText: 'Enter your phone number',  
              labelText: 'Phone',  
            ),  
            validator: (value) {  
              if (value!.isEmpty) {  
                return ' Enter a valid phone number';  
              }  
              return null;  
            },  
          ),  
          TextFormField(  
            controller: dobvalue,
            decoration: const InputDecoration(  
            icon: Icon(Icons.calendar_today),  
            hintText: 'Enter your date of birth',  
            labelText: 'DOB',  
            ),  
            validator: (value) {  
              if (value!.isEmpty) {  
                return 'Enter valid date';  
              }  
              return null;  
            },  
           ),
           TextFormField(  
            controller: addressvalue,
            decoration: const InputDecoration(  
               icon: Icon(Icons.add_alert_rounded), 
              hintText: 'Enter your Address',  
              labelText: 'Address',  
            ),  
            validator: (value) {  
              if (value!.isEmpty) {  
                return ' Enter a valid address';  
              }  
              return null;  
            },  
          ),  
          TextFormField(  
            controller: natioinalityvalue,
            decoration: const InputDecoration(  
               icon: Icon(Icons.person_add_alt_1_outlined), 
              hintText: 'Enter your nationality',  
              labelText: 'Nationality',  
            ),  
            validator: (value) {  
              if (value!.isEmpty) {  
                return ' Enter your nationality';  
              }  
              return null;  
            },  
          ),  
          Container(  
              padding: const EdgeInsets.only(left: 150.0, top: 40.0),  
              child: RaisedButton( 
              color: Colors.lightBlueAccent, 
              
                child: const Text('SUBMIT'), 
               
                onPressed: () {
                  if(_formKey.currentState!.validate()){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SecondRoute()));
                  }
                      
                  },

          ),  
          )  
        ],  
      ), 
     );
  }
}
class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Final result'),
      ),
      body: Center(
        
        // ignore: unnecessary_brace_in_string_interps
        child: Column(
          children: [
            Text("Name:${namevalue.text}"),
            Text("Phone:${phonevalue.text}"),
            Text("DOB:${dobvalue.text}"),
            Text("Address:${addressvalue.text}"),
            Text("Nationality:${natioinalityvalue.text}")
            ,
          ],
        ),
      ),
    );
  }
}


