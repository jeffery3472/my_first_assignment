import 'package:flutter/material.dart';
import 'package:loginapp/email.dart';

class Createpage extends StatelessWidget {
  const Createpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Create Account"),
          actions: [Icon(Icons.list)],
        ),
        body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView(children: [
              TextFormField(
                  decoration: InputDecoration(
                      label: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Firstname"),
              ))),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                  decoration: InputDecoration(
                      label: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Lastname"),
              ))),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                  decoration: InputDecoration(
                label: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Enter Email")),
              )),
              SizedBox(height: 50),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Emailpage()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Text(
                    "next",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                style: TextButton.styleFrom(backgroundColor: Colors.blue),
              )
            ])));
  }
}
