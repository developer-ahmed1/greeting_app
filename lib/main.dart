import 'package:flutter/material.dart';

void main() {
  runApp(GreetingApp());
}

class GreetingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personalized Greeting App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: GreetingScreen(),
    );
  }
}

class GreetingScreen extends StatefulWidget {
  @override
  _GreetingScreenState createState() => _GreetingScreenState();
}

class _GreetingScreenState extends State<GreetingScreen> {
  // Controller to get input from the TextField
  final TextEditingController nameController = TextEditingController();

  // Variable to store and display the greeting message
  String greetingMessage = '';

  // Method to update the greeting message when button is pressed
  void showGreeting() {
    setState(() {
      // Update the greeting message with the user name
      greetingMessage = 'Hello, ${nameController.text}!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Greeting App',))),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // TextField to enter name
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'Enter your name',

              ),
            ),
            SizedBox(height: 16.0), // Spacing between widgets

            // Button to show the greeting
            ElevatedButton(
              onPressed: showGreeting,
              child: Text('Show Greeting'),
            ),
            SizedBox(height: 16.0),

            // Text widget to display the greeting message
            Text(
              greetingMessage,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
