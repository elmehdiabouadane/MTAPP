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
class ProductDetail extends StatelessWidget {
  // TODO: Make a collection of cards (102)

  // TODO: Add a variable for Category (104)
  @override
  Widget build(BuildContext context) {


    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 20.0,),
        Text(
          'Nom produit',
          style: TextStyle(color: Colors.white,fontSize: 45.0),
        ),
        SizedBox(height: 15.0,),
        Expanded(
          flex: 1,
          child: Container(
            padding: const EdgeInsets.all(10.0),
            decoration: new BoxDecoration(
                border: new Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(5.0)),
            child: new Text(
              "\$20",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );

    // Top Content
    final topContent = Stack(
        children : <Widget>[
          Container(
            padding: EdgeInsets.only(left: 10.0),
            height: MediaQuery.of(context).size.height * 0.3,
            decoration: new BoxDecoration(
              //TODO : Hero()
                image: new DecorationImage(image: new AssetImage('assets/tiles.jpg'),
                  fit: BoxFit.cover,
                )
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height *0.3,
            padding: EdgeInsets.all(40.0),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(color: Color.fromARGB(55, 13, 71, 161)),
            child: Center(
              child: topContentText,
            ),
          ),
          Positioned(
            left: 8.0,
            top: 20.0,
            child: InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back,color: Colors.white,),
            ),
          )
        ]
    );

    //Bottom Content

    final bottomContent = Container(
      decoration: BoxDecoration(
        color: Colors.white,

        borderRadius: new BorderRadius.circular(35.0),
      ),
      width: MediaQuery.of(context).size.width ,
      height: MediaQuery.of(context).size.height * 0.65,
     padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
      child :Stack(
            children: <Widget>[
            Positioned(
              top: 10.0,
              left: 10.0,
            child :  Text('Details'),
             ),
           Positioned(
             bottom: 10.0,
              right: 30.0,
           child : RaisedButton(onPressed: null, child: Text('Commander')),
           ),
            ]
        ),
        );

    // TODO: Return an AsymmetricView (104)
    // TODO: Pass Category variable to AsymmetricView (104)
    return
      Scaffold(
      // TODO: Add app bar (102)
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.menu ,
              semanticLabel: 'menu',),
            onPressed: (){
              print('Menu button');
            }),
        title: Text('Marine Turquoise'),

        // TODO: Add trailing buttons (102)
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              semanticLabel: 'search',
            ),
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(
              Icons.tune,
              semanticLabel: 'filter',
            ),
            onPressed: (){},
          )
        ],
      ),
      // TODO: Add a grid view (102)
      // TODO : Grid View
      body: Stack(
        children : <Widget>[
          Container(
          child :topContent,
          ),
          //SizedBox(height: 10.0,),
          Container(
            padding: EdgeInsets.fromLTRB(0, 175, 0, 0),
         child : bottomContent
          )
      ]
      )

      //body :  AsymmetricView(products: ProductsRepository.loadProducts(Category.all)),
      // TODO: Set resizeToAvoidBottomInset (101)

    );
  }
}

