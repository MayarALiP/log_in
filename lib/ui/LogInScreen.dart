import 'package:flutter/material.dart';
import 'package:log_in/UI/UsersScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "LogIn",
          style: TextStyle(fontSize: 24),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(children: [
            //Image
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
              child: Image(
                image: AssetImage('assets/images/Capture.PNG'),
              ),
            ),

            // user Name
            const Padding(
              padding: EdgeInsets.all(25.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your User Name',
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.deepOrangeAccent,
                  ),
                  labelText: 'User Name',
                  border: OutlineInputBorder(
                    // borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      width: 5,
                      style: BorderStyle.solid,
                    ),
                  ),
                ),
              ),
            ),

            //passWord
            const Padding(
              padding: EdgeInsets.all(25.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Enter your Password',
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.deepOrangeAccent,
                  ),
                  labelText: 'Pass-Word',
                  border: OutlineInputBorder(
                    // borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      width: 5,
                      style: BorderStyle.solid,
                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10),
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.deepOrange),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      side: const BorderSide(color: Colors.deepOrange),
                    ),
                  ),
                ),
                child: const Text(
                  " Log In ",
                  style: TextStyle(fontSize: 30, color: Colors.white60),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const UsersScreen(),
                    ),
                  );
                },
              ),
            )
          ]),
        ),
      ),
    );
  }
}

/*
*
  Navigator.of(context).push(
  MaterialPageRoute(
  builder: (context) => const SongScreen(song: song),
   ),
  );
*
*/
