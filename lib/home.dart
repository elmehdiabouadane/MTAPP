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
import 'package:intl/intl.dart';
import 'supplemental/asymmetric_view.dart';
import 'model/products_repository.dart';
import 'model/product.dart';
class HomePage extends StatelessWidget {

  // TODO: Make a collection of cards (102)

  // TODO: Add a variable for Category (104)
  @override
  Widget build(BuildContext context) {
    // TODO: Return an AsymmetricView (104)
    // TODO: Pass Category variable to AsymmetricView (104)
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.fromLTRB(0, 180, 0, 0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            //mainAxisSize: MainAxisSize.max,
            children: [
        Row(
        crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Padding (
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: ClipRRect(
                clipBehavior: Clip.hardEdge,
                borderRadius: new BorderRadius.circular(35.0),
              child :GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, '/products');
                  },
                child : Image.asset('assets/tiles.jpg'),
              )

              )
          )
          ),
          Expanded(
              child: Padding (
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: ClipRRect(
                  borderRadius: new BorderRadius.circular(35.0),
                  clipBehavior: Clip.hardEdge,
                  child : GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, '/products');
                      },
                    child : Image.asset('assets/fraise.jpg',),
                  )
                )
              )
          ),
        ],
        ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                 Padding (
                    padding: EdgeInsets.fromLTRB(100, 10, 10, 10),
                    child:ClipRRect(
                      borderRadius: new BorderRadius.circular(35.0,),
                       clipBehavior: Clip.hardEdge,
                      child : GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, '/products');
                        },
                        child : Image.asset('assets/decor.jpg',height: 150,),
                      )
                    )
                 )

            ],
          )
         ]
        ),
      ),
    );
  }
}
