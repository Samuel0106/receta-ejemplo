import 'package:flutter/material.dart';

//Estilos
import 'package:receta2_0_app/src/styles/styles.dart';

List<Widget> recetasListado(
    BuildContext context, List<dynamic> recetasPopulares) {
  final List<Widget> listadoRecetas = [];
  recetasPopulares.forEach((receta) {
    final listadoWidgetProvisional =
        _cuerpoRecetaListado(context, titlesRecipeStyle, receta);
    listadoRecetas.add(listadoWidgetProvisional);
  });
  return listadoRecetas;
}

Widget _cuerpoRecetaListado(
    BuildContext context, TextStyle estilos, Map<String, dynamic> receta) {
  return Column(
    children: <Widget>[
      SizedBox(
        height: 20.0,
      ),
      GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, 'detalles', arguments: receta);
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image(
            image: NetworkImage(receta['foto']),
            fit: BoxFit.fill,
            width: 350.0,
            height: 140.0,
          ),
        ),
      ),
      Container(
        alignment: AlignmentDirectional.topStart,
        margin: EdgeInsets.only(left: 30.0, top: 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              receta['título'],
              textAlign: TextAlign.left,
              style: estilos,
            ),
            Text(
              receta['descripción'],
              textAlign: TextAlign.left,
              style: descriptionRecipeStyle,
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Expanded(
                      flex: 1,
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.alarm, color: colorIcons),
                          Container(
                            margin: EdgeInsets.only(left: 0.5),
                            child: Text(
                              receta['duración'],
                              style: iconStyle,
                            ),
                          )
                        ],
                      )),
                  Expanded(
                      flex: 2,
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.food_bank_outlined, color: colorIcons),
                          Container(
                            margin: EdgeInsets.only(left: 0.5),
                            child: Text(
                              receta['dificultad'],
                              style: iconStyle,
                            ),
                          )
                        ],
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
