import 'package:flutter/material.dart';
import 'package:loginapp/createaccount.dart';
import 'package:loginapp/level5.dart';
import 'package:loginapp/nextpage.dart';

class Level4 extends StatelessWidget {
  const Level4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
        actions: const [Icon(Icons.search), Icon(Icons.list)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: ListView(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Welcomepage()));
              },
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1437622368342-7a3d73a34c8f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=928&q=80",
                ),
                radius: 50,
              ),
            ),
            TextFormField(
              decoration: InputDecoration(label: Text("Username/Email")),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(label: Text("Password")),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Level5()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Text(
                      "login",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  style: TextButton.styleFrom(backgroundColor: Colors.blue),
                ),
                SizedBox(
                  width: 45,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Createpage()));
                    },
                    child: Text("Create Account"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
