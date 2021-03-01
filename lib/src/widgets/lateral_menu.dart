import 'package:flutter/material.dart';

//Styles
import 'package:receta2_0_app/src/styles/styles.dart';

Drawer menuLateral(context) {
  return Drawer(
    elevation: 0.0,
    child: Container(
      color: colorBG,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/pizza.png'),
                      fit: BoxFit.cover)),
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  'Recetas App',
                  style: textLateralMenu,
                ),
              )),
          ListTile(
            leading: Icon(Icons.food_bank_outlined, color: colorIcons),
            title: Text('Categorias'),
            onTap: () {
              Navigator.pushNamed(context, 'categorias');
            },
          ),
          ListTile(
            leading: Icon(Icons.help, color: colorIcons),
            title: Text('Ayuda'),
            onTap: () {
              Navigator.pushNamed(context, 'categoria');
            },
          )
        ],
      ),
    ),
  );
}
