import 'package:flutter/material.dart';
import 'detalleproducto.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ejercicio02',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DetalleProducto(
        nombre: 'CASE Completo ASUS',
        precio: '\$3000',
        descripcion: 'Este Case contiene las siguientes características: Geforce RTX 3070, 32gb RAM, Core i7-12400, ASUS Z902',
        imagenUrl: 'https://media.istockphoto.com/id/1314343964/es/foto/unidad-de-sistema-de-gama-alta-para-el-primer-plano-de-la-computadora-de-juego.jpg?s=2048x2048&w=is&k=20&c=4ZfOgrUzagfHV0jGwuxoA_3IPZldmI9eqG3aBX-P0_Q=',
      ),
    );
  }
}
