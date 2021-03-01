import 'package:flutter/material.dart';

//Styles
import 'package:receta2_0_app/src/styles/styles.dart';

Widget appBarDetails(String foto) {
  return SliverAppBar(
    backgroundColor: colorBG,
    expandedHeight: 200.0,
    floating: false,
    pinned: true,
    elevation: 0.0,
    iconTheme: IconThemeData(color: colorIconsAppBar),
    flexibleSpace: FlexibleSpaceBar(
      background: FadeInImage(
        placeholder: NetworkImage(foto),
        image: NetworkImage(foto),
        fadeInDuration: Duration(milliseconds: 150),
        fit: BoxFit.cover
      ),
    ),
  );
}
