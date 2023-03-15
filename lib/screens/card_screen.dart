import 'package:flutter/material.dart';

import 'package:fl_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        children: const <Widget>[
          CustomCardType1(
            title: 'Soy un título',
            subtitle: 'Soy un subtitulazo. Es genial, ¿o no?',
            icon: Icons.photo_album_outlined,
          ),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
            'https://i.pinimg.com/originals/bb/02/b6/bb02b6adee454e6f41452743c6284c03.jpg',
          ),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
            'https://preview.redd.it/csd19inw3hb61.jpg?auto=webp&s=70091dfccd52c29db976653d28ae9854097118ae',
            imageSubtitle: '¡Boota!',
          ),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
            'https://www.wallpaperflare.com/static/293/122/421/tengen-toppa-gurren-lagann-simon-tengen-toppa-wallpaper.jpg',
            imageSubtitle: '¡Simon!',
          ),
        ],
      ),
    );
  }
}