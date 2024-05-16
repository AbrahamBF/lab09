import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ejercicio03',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: GalleryScreen(),
    );
  }
}

class GalleryScreen extends StatelessWidget {
  final List<ImageModel> images = [
    ImageModel(name: 'Dados', path: 'assets/images/png.png', type: ImageType.png),
    ImageModel(name: 'Flor', path: 'assets/images/jpg.jpg', type: ImageType.jpg),
    ImageModel(name: 'Pinguino', path: 'assets/images/svg.svg', type: ImageType.svg),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ejercicio03')),
      body: GridView.builder(
        itemCount: images.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return ImageTile(image: images[index]);
        },
      ),
    );
  }
}

class ImageModel {
  final String name;
  final String path;
  final ImageType type;

  ImageModel({required this.name, required this.path, required this.type});
}

enum ImageType { png, jpg, svg }

class ImageTile extends StatelessWidget {
  final ImageModel image;

  ImageTile({required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildImage(),
          SizedBox(height: 8),
          Text(
            image.name,
            style: _getTextStyle(image.type),
          ),
        ],
      ),
    );
  }

  Widget _buildImage() {
    switch (image.type) {
      case ImageType.png:
      case ImageType.jpg:
        return Image.asset(
          image.path,
          width: 100,
          height: 100,
          fit: BoxFit.cover,
        );
      case ImageType.svg:
        return SvgPicture.asset(
          image.path,
          width: 100,
          height: 100,
          fit: BoxFit.cover,
        );
    }
  }

  TextStyle _getTextStyle(ImageType type) {
    switch (type) {
      case ImageType.png:
        return TextStyle(fontFamily: 'Arial', fontSize: 16, fontWeight: FontWeight.bold);
      case ImageType.jpg:
        return TextStyle(fontFamily: 'Times New Roman', fontSize: 16, fontWeight: FontWeight.bold);
      case ImageType.svg:
        return TextStyle(fontFamily: 'Roboto', fontSize: 16, fontWeight: FontWeight.bold);
      default:
        return TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
    }
  }
}
