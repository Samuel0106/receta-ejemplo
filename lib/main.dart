import 'package:flutter/material.dart';

//Paginas
import 'package:receta2_0_app/src/pages/categories.dart';
import 'package:receta2_0_app/src/pages/details.dart';
import 'package:receta2_0_app/src/pages/home_page.dart';

//Estilos
import 'package:receta2_0_app/src/styles/styles.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColorLight: colorTitle,
      ),
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => HomePage(),
        'categorias': (BuildContext context) => CategoriesPage(),
        'detalles': (BuildContext context) => DetailsPage(),
      },
    );
  }
}
