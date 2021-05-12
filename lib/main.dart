import 'package:flutter/material.dart';

void main() =>  runApp(MaterialApp(
  home: mee(),
));
class mee extends StatefulWidget {
  @override
  _meeState createState() => _meeState();
}

class _meeState extends State<mee> {
  int levv =0;
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        title: Text("Server Id card"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            levv +=1;
          });
        },
        child: Icon(Icons.emoji_emotions_outlined),
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/WhatsApp Image 2020-01-24 at 11.21.20 PM.jpeg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 60,
              color: Colors.grey,

            ),

            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
              ),

            ),
            SizedBox(height: 10.0,),
            Text(
              'Server',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),

            ),
            SizedBox(height: 30.0,),
            Text(
              'Server level',
              style: TextStyle(
                color: Colors.grey,
              ),

            ),
            SizedBox(height: 10.0,),
            Text(
              '$levv',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),

            ),
            SizedBox(height: 30.0,),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0),
                Text(
                  'serverphoto@gmail.com',
                  style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2.0,
                  fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),

                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}



