import 'package:flutter/material.dart';

import '../constants.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:const  [
            Icon(Icons.error,size: 74,),
            Text(
              'msg',
              style: TextStyle(
                fontSize: 40,
                color: Colors.deepPurple
              ),
            ),
          ],
        ),
      ),
    );
  }
}
