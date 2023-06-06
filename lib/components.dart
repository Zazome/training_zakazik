import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:training_zakazik/constants.dart';

Widget personDesign(
{
  required final name,
  required final email,
  required final phone,
  required final type,

}) => Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(
            fontSize: 34,
          ),
        ),
        actions: const [
          Icon(
            Icons.person,
            size: 40,
          )
        ],
        backgroundColor: stableColor1,
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.account_circle_rounded,
              size: 200,
              color: stableColor5,
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Icon(
                  Icons.person,
                  size: 40,
                  color: Colors.grey[400],
                ),
                const SizedBox(
                  width: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Name',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    Text(
                      '$name',
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.deepPurple,
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Icon(
                  Icons.email,
                  size: 40,
                  color: Colors.grey[400],
                ),
                SizedBox(
                  width: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Email',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    Text(
                      '$email',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.deepPurple,
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Icon(
                  Icons.phone,
                  size: 40,
                  color: Colors.grey[400],
                ),
                const SizedBox(
                  width: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Phone',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    Text(
                      '$phone',
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.deepPurple,
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Icon(
                  Icons.assignment_ind_sharp,
                  size: 40,
                  color: Colors.grey[400],
                ),
                const SizedBox(
                  width: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'User type',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    Text(
                      '$type',
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.deepPurple,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
Widget failedDesign({
  required final message,
})=>Scaffold(
  body:Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:  [
        const Icon(Icons.error,size: 74,),
        Text(
          '$message',
          style: const TextStyle(
              fontSize: 20,
              color: Colors.deepPurple
          ),
        ),
      ],
    ),
  ),
);
