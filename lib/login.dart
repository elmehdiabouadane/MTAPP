// Copyright 2018-present the Flutter authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // TODO: Add text editing controllers (101)
  final _usernameContoller = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                Image.asset('assets/diamond.png'),
                SizedBox(height: 16.0),
                Text('Marine Turquoise'),
              ],
            ),
            SizedBox(height: 120.0),
            // TODO: Wrap Username with AccentColorOverride (103)
            // TODO: Remove filled: true values (103)
            // TODO: Wrap Password with AccentColorOverride (103)
            // TODO: Add TextField widgets (101)
            //[Name]
            TextField(
              controller: _usernameContoller,
              decoration: InputDecoration(
                filled: true,
                labelText: 'Username',
              ),
            ),
            //Spacer
            SizedBox(height: 12.0),
            //[Password]
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
              filled: true,
              labelText: 'Password',
            ),
              obscureText: true,
            ),

            // TODO: Add button bar (101)
            ButtonBar(
              children: <Widget>[
                //TODO : add Buttons
                FlatButton(
                  child: Text('Cancel'),
                  onPressed: (){
                    _usernameContoller.clear();
                    _passwordController.clear();
                  },
                ),
                RaisedButton(
                  child: Text('Login'),
                  elevation: 8.0,
                  onPressed: (){
                    Navigator.pop(context);
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

// TODO: Add AccentColorOverride (103)
