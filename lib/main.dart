import 'package:flutter/material.dart';
import 'package:flutter_with_firebase/models/user.dart';
import 'package:flutter_with_firebase/screens/wrapper.dart';
import 'package:flutter_with_firebase/services/auth.dart';
import 'package:provider/provider.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
          value: AuthService().user,
          child: MaterialApp(
            home: Wrapper(),
      ),
    );
  }
}


//https://www.youtube.com/watch?v=j_SJ7XmT2MM&list=PL4cUxeGkcC9j--TKIdkb3ISfRbJeJYQwC&index=8 -- 02;17