import 'package:flutter/material.dart';

//Swiper
import 'package:flutter_swiper/flutter_swiper.dart';

//Provider
import 'package:receta2_0_app/src/provider/recetas_provider.dart';

//Vista de modelos
import 'package:receta2_0_app/src/viewModels/categorias_listado_view_model.dart';

class SwiperCategories extends StatelessWidget {
  final controller = PageController(initialPage: 1, viewportFraction: 0.3);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110.0,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return FutureBuilder(
            future: recetasProvider.cargarCategorias(),
            initialData: [],
            builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
              return PageView(
                controller: controller,
                children: categoriasListado(context)
              );
            },
          );
        },
        itemCount: 3,
        layout: SwiperLayout.DEFAULT,
      ),
    );
  }
}