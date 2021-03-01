import 'package:flutter/material.dart';

//Styles
import 'package:receta2_0_app/src/styles/styles.dart';

Widget appBarCategories(String title) {
  return SliverAppBar(
    backgroundColor: colorBG,
    floating: false,
    pinned: true,
    elevation: 0.0,
    iconTheme: IconThemeData(color: colorIconsAppBar),
  );
}
