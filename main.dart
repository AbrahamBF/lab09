import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista con Imágenes y Fuentes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ListaConImagenes(),
    );
  }
}

class ListaConImagenes extends StatelessWidget {
  final List<Map<String, dynamic>> elementos = [
    {
      'categoria': 'Alimentos',
      'nombre': 'Pizza',
      'imagen': 'assets/images/pizza.jpg',
      'fuente': 'OpenSans',
    },
    {
      'categoria': 'Alimentos',
      'nombre': 'Manzana',
      'imagen': 'assets/images/manzana.jpg',
      'fuente': 'OpenSans',
    },
    {
      'categoria': 'Animales',
      'nombre': 'Perro',
      'imagen': 'assets/images/perro.jpg',
      'fuente': 'Lato',
    },
    {
      'categoria': 'Animales',
      'nombre': 'Gato',
      'imagen': 'assets/images/gato.jpg',
      'fuente': 'Lato',
    },
    {
      'categoria': 'Lugares',
      'nombre': 'París',
      'imagen': 'https://media.istockphoto.com/id/1072749124/es/foto/torre-eiffel-y-vista-panor%C3%A1mica-del-horizonte-de-par%C3%ADs-vibrante-atardecer-europeo.jpg?s=1024x1024&w=is&k=20&c=zo5CpnwJ7QL8G4xv9LpTduApdvNyBuMXxvFtROzid9U=', // Imagen de la web
      'fuente': 'Ubuntu',
    },
    {
      'categoria': 'Lugares',
      'nombre': 'Nueva York',
      'imagen': 'https://media.istockphoto.com/id/1476291604/es/foto/la-pintoresca-arquitectura-en-el-distrito-de-knightsbridge-londres-inglaterra-reino-unido.jpg?s=2048x2048&w=is&k=20&c=dJOGxTnzose7DEB77qCl4VuIc4wojiWfhDmVu5IuHkM=', // Imagen de la web
      'fuente': 'Ubuntu',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ejercicio 01'),
      ),
      body: ListView.builder(
        itemCount: elementos.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: elementos[index]['imagen'].startsWith('http')
                ? Image.network(elementos[index]['imagen'])
                : Image.asset(elementos[index]['imagen']),
            title: Text(
              elementos[index]['nombre'],
              style: TextStyle(
                fontFamily: elementos[index]['fuente'],
              ),
            ),
            subtitle: Text(elementos[index]['categoria']),
          );
        },
      ),
    );
  }
}