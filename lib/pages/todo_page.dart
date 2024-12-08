import 'package:flutter/material.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _State();
}

class _State extends State<TodoPage> {
  // Text editing controller to get access to what the user typed
  TextEditingController myController = TextEditingController();

  //Greeting message variable
  String greetingMessage ="";

  //greet user method
  void greetUser(){
    String userName = myController.text;
    setState(() {
      greetingMessage = "Hello, "+ userName;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Greet user message
              Text(greetingMessage),

              TextField(
                controller: myController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Type your name.."
                ),
              ),

              //Button
              ElevatedButton(
                  onPressed: greetUser,
                  child: Text("Tap"))
            ],
          ),
        ),
      ),
    );
  }
}
