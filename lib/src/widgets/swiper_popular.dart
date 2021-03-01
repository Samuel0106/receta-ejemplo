import 'package:flutter/material.dart';

// Swipper
import 'package:flutter_swiper/flutter_swiper.dart';

class swiperPopulares extends StatelessWidget {

  final controller = PageController(
    initialPage: 1,
    viewportFraction: 1
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
      child: Swiper(
        itemBuilder: (BuildContext context, int index){
          return PageView(
            controller: controller,
            children: <Widget>[
              _tarjeta(),
              _tarjeta()
            ],
          );
        },
        itemCount: 1,
        itemHeight: 500.0,
        itemWidth: 450.0,
        layout: SwiperLayout.TINDER,
      ),
    );
  }

  Widget _tarjeta(){
    return Container(
      margin: EdgeInsets.only(left:30.0),
      child: Image(
        image: AssetImage('assets/slide_pizza.png'),
        fit: BoxFit.fill,
      ),
    );
  }

}//Clase
