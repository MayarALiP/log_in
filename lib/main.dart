import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepOrange,
      ),

      home: Scaffold(
        appBar: AppBar(
          title:const Text("LogIn" ,
            // ----------------why didn't it go to the center
          textAlign: TextAlign.center,
        ) ,
        ),

        body: Center(
               child: SingleChildScrollView(
                 child: Column(
                    children: const [
                   //Image
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 40, 0, 40),
                      child: Image(
                        image:AssetImage('assets/images/Capture.PNG') ,
                      ),
                    ),

                   // user Name
                   Padding(
                     padding: EdgeInsets.all(40.0),
                     child: TextField(
                       decoration:InputDecoration(
                         hintText: 'Enter your User Name',
                         prefixIcon: Icon(Icons.person,
                           color:Colors.deepOrangeAccent ,
                         ),
                         labelText:'User Name',
                         border: OutlineInputBorder(
                           // borderRadius: BorderRadius.circular(8),
                           borderSide: BorderSide(
                             width: 5,
                             style: BorderStyle.solid,
                           ),

                         ) ,
                       ),
                     ),
                   ),

                   //passWord
                   Padding(
                     padding: EdgeInsets.all(40.0),
                     child: TextField(
                       obscureText: true,
                       decoration:InputDecoration(
                         hintText: 'Enter your Password',
                         prefixIcon: Icon(Icons.lock,
                           color:Colors.deepOrangeAccent ,
                         ),
                         labelText:'Pass-Word',
                         border: OutlineInputBorder(
                           // borderRadius: BorderRadius.circular(8),
                           borderSide: BorderSide(
                             width: 5,
                             style: BorderStyle.solid,
                           ),

                         ) ,
                       ),
                     ),
                   ),
                 ],),
               ),
      ),
      ),
    );
  }
}
