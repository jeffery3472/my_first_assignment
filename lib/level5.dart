import 'package:flutter/material.dart';
import 'package:loginapp/loginpage.dart';

class Level5 extends StatelessWidget {
  const Level5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade100,
      appBar: AppBar(
        title: Text("Check List"),
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Level4()));
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 17, right: 10),
              child: Text("Logout"),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            checkviewWidget(),
            checkviewWidget(),
            checkviewWidget(),
          ],
        ),
      ),
    );
  }
}

class checkviewWidget extends StatelessWidget {
  const checkviewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          radius: 20,
          backgroundColor: Colors.amber,
        ),
        title: Text("Jeffery"),
        subtitle: Row(
          children: [
            Icon(Icons.check),
            SizedBox(
              width: 5,
            ),
            Text("I am at level 5"),
          ],
        ),
        trailing: Column(
          children: [
            Text("Yesterday"),
            SizedBox(
              height: 7,
            ),
            Icon(Icons.pin_outlined)
          ],
        ),
      ),
    );
  }
}
