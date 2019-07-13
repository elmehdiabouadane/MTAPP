import 'package:flutter/material.dart';
//import 'package:firebase_auth/firebase_auth.dart';

class UserRegister extends StatefulWidget{
  
  @override
  _UserRegisterState createState() => _UserRegisterState();

}

class _UserRegisterState extends State<UserRegister>{

  var _categUsers = ['Vendeur', 'Fournisseur', 'Particulier'];
  var _currentItemSelected = 'Particulier';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/background.png"),
              fit: BoxFit.cover,
            ),
          ),
          padding: EdgeInsets.only(top: 25),
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 80,
                ),
                Center(
                  child: SizedBox(
                    //width: 74,
                    height: 70,
                    child: Text("Inscription",
                      style: TextStyle(
                        fontSize: 28,
                        color: Colors.lightBlue,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Calibri',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(left: 30, right: 30),
                      decoration: new BoxDecoration(
                        border: Border.all(
                        width: 0.5
                      ),
                      borderRadius: BorderRadius.all(
                          Radius.circular(25) //                 <--- border radius here
                      ),
                      ),
                      child: Column(
                        children: <Widget>[
                          TextField(
                          autofocus: false,
                          obscureText: false,
                          keyboardType: TextInputType.text,
                          //controller: emailEditingController,
                          decoration: InputDecoration(
                            //labelText: "Email",
                            hintText: "Nom et prénom",
                            labelStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: const Radius.circular(25.0),
                                topRight: const Radius.circular(25.0)
                              ),
                              borderSide: BorderSide(color: Colors.greenAccent, width: 5.0)
                            )
                          ),
                        ),
                        TextField(
                          autofocus: false,
                          obscureText: false,
                          keyboardType: TextInputType.emailAddress,
                          //controller: emailEditingController,
                          decoration: InputDecoration(
                            //labelText: "Email",
                            hintText: "Email",
                            labelStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                            border: OutlineInputBorder(
                              //border: Border.all(), 
                              borderRadius: BorderRadius.all(Radius.circular(0)),
                              //borderSide: BorderSide(color: Colors.greenAccent, width: 5.0)
                            )
                          ),
                          //validator: (value) => value.isEmpty ? 'GGG' : null,
                        ),
                        TextField(
                          autofocus: false,
                          obscureText: false,
                          keyboardType: TextInputType.phone,
                          //controller: emailEditingController,
                          decoration: InputDecoration(
                            //labelText: "Email",
                            hintText: "Tél",
                            labelStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(0)),
                              borderSide: BorderSide(color: Colors.greenAccent, width: 5.0)
                            )
                          ),
                        ),
                        TextField(
                          autofocus: false,
                          obscureText: true,
                          keyboardType: TextInputType.text,
                          //controller: emailEditingController,
                          decoration: InputDecoration(
                            //labelText: "Email",
                            hintText: "Mot de passe",
                            labelStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(0)),
                              borderSide: BorderSide(color: Colors.greenAccent, width: 5.0)
                            )
                          ),
                        ),
                        Row(
                          children: <Widget>[ 
                            Expanded(
                              child: Container(
                                decoration: new BoxDecoration(
                                  border: Border.all(
                                  width: 0.5
                                ),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: const Radius.circular(25.0),
                                  bottomRight: const Radius.circular(25.0)
                                ),
                                ),
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Container(
                                        margin: const EdgeInsets.only(left: 12),
                                        child: Row(
                                          children: <Widget>[
                                            Text("Catégorie",
                                      style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.blueGrey,
                                      //fontWeight: FontWeight.bold,
                                      fontFamily: 'Calibri',
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        margin: const EdgeInsets.only(left: 2),
                                        child: ButtonTheme(
                                          alignedDropdown: true,
                                          child: DropdownButton<String>(
                                        items: _categUsers.map((String dropDownStringItem) {
                                          return DropdownMenuItem<String>(
                                              value: dropDownStringItem,
                                              child: Text(dropDownStringItem),
                                          );
                                      }).toList(),
                                      onChanged: (String newValueSelected){
                                        setState(() {
                                          this._currentItemSelected = newValueSelected;
                                        });
                                      },
                                      value: _currentItemSelected,
                                    ),
                                        ),
                                      ),
                                    ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        ],
                      ),
                  ),
                ),
                SizedBox(
                  height: 29,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 100),
                  child: ButtonTheme(
                  minWidth: 150,
                  shape: StadiumBorder(),
                  child: MaterialButton(
                    onPressed: () => {},
                    textColor: Colors.lightBlue,
                    color: Colors.white,
                    height: 50,
                    child: Text("S'inscrire",
                        style: TextStyle(
                        fontSize: 17,
                        color: Colors.lightBlue,
                        fontWeight: FontWeight.bold,
                      ),), 
                  ),
                ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}