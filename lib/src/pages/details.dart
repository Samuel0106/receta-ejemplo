import 'package:flutter/material.dart';

//Styles
import 'package:receta2_0_app/src/styles/styles.dart';

//Widgets
import 'package:receta2_0_app/src/widgets/app_bar_details.dart';
import 'package:receta2_0_app/src/widgets/swiper_ingredients.dart';
import 'package:receta2_0_app/src/widgets/titles.dart';

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final Map<String,dynamic> receta = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      backgroundColor: colorBG,
      body: CustomScrollView(
        slivers: <Widget>[
          appBarDetails(receta['foto']),
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
              padding: const EdgeInsets.only(right: 8.0, bottom: 8.0),
              child: _cuerpoReceta(receta, titlesRecipeStyle)
            ),
            titles('Ingredientes', titlesStyle),
            SizedBox(
              height: 20.0,
            ),
            SwiperIngredientes(receta['ingredientes']),
            SizedBox(
              height: 15.0,
            ),
            titles('preparacion', titlesStyle),
            _textDescription(receta['preparación'])
          ]))
        ],
      ),
    );
  }
}

Widget _cuerpoReceta(Map<String,dynamic>receta, TextStyle estilos) {
  return Container(
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
  );
}

Widget _textDescription(String text) {
  return Container(
    child: Text(
      text,
      textAlign: TextAlign.left,
      style: preparationRecipeStyle,
    ),
  );
}
