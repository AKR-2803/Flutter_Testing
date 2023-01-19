import 'package:flutter/material.dart';

void main() => runApp(PostApp());

class PostApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Posting Application!",
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Post_Here!",
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
          leading: GestureDetector(
            onTap: () => {print("clicked!")},
            child: Icon(Icons.logout, size: 25),
          ),
        ),
        body: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                maxLines: 4,
                decoration: InputDecoration(
                  hintText: "What's on your mind...",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 5,
                      color: Colors.redAccent,
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () => print("Posted! Successfully!"),
                  child: Text("!PostNow!")),
            ],
          ),
        ),
      ),
    );
  }
}
