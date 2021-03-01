import 'package:flutter/material.dart';

//Porvider
import 'package:receta2_0_app/src/provider/recetas_provider.dart';

//Estilos
import 'package:receta2_0_app/src/styles/styles.dart';

//Vista de modelos
import 'package:receta2_0_app/src/viewModels/recetas_listado_view_model.dart';

//Widget
import 'package:receta2_0_app/src/widgets/app_bar_categories.dart';
import 'package:receta2_0_app/src/widgets/titles.dart';

class CategoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> categoria =
        ModalRoute.of(context).settings.arguments;
    return Scaffold(
        backgroundColor: colorBG,
        body: CustomScrollView(
          slivers: <Widget>[
            appBarCategories(categoria['nombre']),
            SliverList(
                delegate: SliverChildListDelegate(
              [
                titles(categoria['nombre'], titlesStyleCategories),
                FutureBuilder(
                  future: recetasProvider.cargarCategoria(categoria['nombre']),
                  initialData: [],
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    return Column (
                      children: recetasListado(context, snapshot.data),
                    );
                  },
                )
              ],
            ))
          ],
        ));
  }
}
