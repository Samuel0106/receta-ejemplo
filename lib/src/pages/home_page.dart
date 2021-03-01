import 'package:flutter/material.dart';

//Providers
import 'package:receta2_0_app/src/provider/recetas_provider.dart';

// Styles
import 'package:receta2_0_app/src/styles/styles.dart';

//Vista de Modelos
import 'package:receta2_0_app/src/viewModels/recetas_listado_view_model.dart';

// Widgets
import 'package:receta2_0_app/src/widgets/app_bar.dart';
import 'package:receta2_0_app/src/widgets/lateral_menu.dart';
import 'package:receta2_0_app/src/widgets/swiper_categories.dart';
import 'package:receta2_0_app/src/widgets/swiper_popular.dart';
import 'package:receta2_0_app/src/widgets/titles.dart';

class HomePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: menuLateral(context),
        key: _scaffoldKey,
        backgroundColor: colorBG,
        body: CustomScrollView(
          slivers: <Widget>[
            appBar(context, _scaffoldKey),
            SliverList(
                delegate: SliverChildListDelegate([
              Column(
                children: <Widget>[
                  swiperPopulares(),
                  titles('Categorias', titlesStyle),
                  SwiperCategories(),
                  titles('Recetas Populares', titlesStyle),
                  FutureBuilder(
                    future: recetasProvider.cargarRecetasPopulares(),
                      initialData: [],
                      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
                        return Column (
                            children: recetasListado(context, snapshot.data),
                            );
                      },
                  ),
                ],
              )
            ]))
          ],
        ));
  }
}
