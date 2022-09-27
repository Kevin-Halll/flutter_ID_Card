import 'package:flutter/material.dart';


class MyCard extends StatefulWidget {
  const MyCard({super.key});

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {

  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text('ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0, //box shadow
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              counter++;
            });
          },
          child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('kevin.png'),
              ),
            ),
            Divider(
              height: 60,
              color: Colors.grey[800],
            ),
            const Text(
              'NAME',
              style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
            ),
            const SizedBox(height: 5),
            const Text(
              'Kevin Hall',
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: const <Widget>[
                Icon(
                  Icons.mail,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'khall@gmail.com',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: const <Widget>[
                Icon(
                  Icons.phone,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '(876) 458-7899',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children:  <Widget>[
                Icon(
                  Icons.check_outlined,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Your Count is $counter',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
// comment