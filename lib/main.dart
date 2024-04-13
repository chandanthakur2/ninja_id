import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: NinjaCard(),
    )
  );
}

class NinjaCard extends StatefulWidget{

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {

  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text("Ninja ID Card",
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
        ),
        backgroundColor: Colors.grey[850],
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            ninjaLevel += 1;
            print(ninjaLevel);
          });
        },
        backgroundColor: Colors.grey[800],
        foregroundColor: Colors.grey[400],
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/thumb.jpg"),
                radius: 40,
              ),
            ),
            Divider(
              height: 60,
              color: Colors.grey[800],
            ),
            const Text("NAME", style: TextStyle(
              color: Colors.grey,
              letterSpacing: 2
            ),),
            const SizedBox(height: 10),
            const Text("Chandan", style: TextStyle(
              color: Colors.amberAccent,
              fontSize: 28,
              letterSpacing: 2,
              fontWeight: FontWeight.bold
            ),),
            const SizedBox(height: 30),
            const Text("CURRENT NINJA LEVEL", style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2
            ),),
            SizedBox(height: 10),
            Text('$ninjaLevel', style: const TextStyle(
                color: Colors.amberAccent,
                fontSize: 28,
                letterSpacing: 2,
                fontWeight: FontWeight.bold
            ),),
            const SizedBox(height: 30),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                const SizedBox(width: 10),
                Text(
                  "chandanthakur.bee@gmail.com",
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18,
                    letterSpacing: 1
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}