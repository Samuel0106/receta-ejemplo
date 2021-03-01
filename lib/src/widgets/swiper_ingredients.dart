import 'package:flutter/material.dart';

//Swiper
import 'package:flutter_swiper/flutter_swiper.dart';

//Vista de modelo
import 'package:receta2_0_app/src/viewModels/ingredientes_listado_view_model.dart';

  final controller = PageController(initialPage: 1, viewportFraction: 0.3);

  Widget SwiperIngredientes(List<dynamic> ingredientes) {
    return Container(
      height: 120.0,
      padding: EdgeInsets.only(left: 5.0),
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return PageView(
            controller: controller,
            children: ingredientesListado(ingredientes),
          );
        },
        itemCount: 1,
        layout: SwiperLayout.DEFAULT,
      ),
    );
  }