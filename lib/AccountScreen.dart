import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account'),
        backgroundColor: Colors.red[300],
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                Image(
                  image: AssetImage('assets/illustration.png'),
                  height: 250.0,
                  width: 250.0,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Name',style:TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.black87,
                  )),
                ),
                TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey[400])
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey[400])
                    )
                  ),
                  autocorrect: false,
                ),
                SizedBox(height: 30.0),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Email',style:TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.black87
                  )),
                ),
                TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey[400])
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey[400])
                    )
                  ),
                  autocorrect: false,
                ),
                SizedBox(height: 30.0),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Password',style:TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.black87
                  )),
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey[400])
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey[400])
                    )
                  ),
                  autocorrect: false,
                ),
                SizedBox(height: 30.0),
                RawMaterialButton(
                  child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Save information'),
                      )
                  ),
                  fillColor: Colors.red[300],
                  onPressed: () {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}