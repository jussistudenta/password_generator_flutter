import 'package:flutter/material.dart';

showAlertDialog(BuildContext context) {  
  // Create button  
  Widget okButton = ElevatedButton(  
    child: const Text("OK"),  
    onPressed: () {  
      Navigator.of(context).pop();  
    },  
  );  
  
  // Create AlertDialog  
  AlertDialog alert = AlertDialog(
    backgroundColor: Colors.deepPurple,
    title: const Text("You can not deselect all password categories!"),
    content: Text("Password must contain characters from at least one character category!",
    style: Theme.of(context).textTheme.bodyLarge),  
    actions: [  
      okButton,  
    ],  
  );  
  
  // show the dialog  
  showDialog(  
    context: context,  
    builder: (BuildContext context) {  
      return alert;  
    },  
  );  
} 