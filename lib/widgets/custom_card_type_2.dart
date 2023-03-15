import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  final String image;
  final String placeholder;
  final String? imageSubtitle;

  const CustomCardType2(
    this.image, 
    {
      super.key,
      this.placeholder = 'assets/loading-gif.gif',
      this.imageSubtitle,
    }
  );

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 10,
      shadowColor: AppTheme.primaryColor.withOpacity(0.5),
      child: Column(
        children: <Widget>[
          // const FadeInImage(
          //   placeholder: AssetImage('assets/loading-gif.gif'), 
          //   image: NetworkImage('https://preview.redd.it/csd19inw3hb61.jpg?auto=webp&s=70091dfccd52c29db976653d28ae9854097118ae'),
          // ),
          FadeInImage.assetNetwork(
            image: image,
            placeholder: placeholder,     
            width: double.infinity,
            height: 260,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),    
            placeholderFit: BoxFit.none,
            placeholderCacheWidth: 30, 
            placeholderCacheHeight: 30,
          ),
          if (imageSubtitle != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: Text(imageSubtitle!),
            ),
        ],
      ),
    );
  }
}