import 'package:flutter/material.dart';

//Delegate
import 'package:receta2_0_app/src/delegates/busqueda_recetas_delegate.dart';

// Estilos
import 'package:receta2_0_app/src/styles/styles.dart';

Widget appBar(BuildContext context, GlobalKey<ScaffoldState> key) {
  return SliverAppBar(
    backgroundColor: colorBG,
    floating: false,
    leading: GestureDetector(
      onTap: () {
        key.currentState.openDrawer();
      },
      child: Container(
        padding: EdgeInsets.all(15.0),
        child: Image(
          image: AssetImage('assets/menu.png'),
          width: 50.0,
          height: 50.0,
        ),
      ),
    ),
    actions: <Widget>[
      Container(
        padding: EdgeInsets.all(15.0),
        child: IconButton(
            icon: Icon(
          Icons.search,
          color: Color.fromRGBO(183, 195, 206, 1.0),
          size: 25.0,
        ),
          onPressed: (){
              showSearch(
                context: context,
                delegate: RecetasSearchDelegate()
              );
          },
        ),
      ),
    ],
  );
}