import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

class ImageWorkout extends StatelessWidget {
   const ImageWorkout({
     super.key,
     required this.imageUrls
   });

  // Definir la lista de imágenes como final
  final List<String> imageUrls;

  // Método para construir el Swiper
  Widget _swiper() {
    return Container(
      width: double.infinity,
      height: 380.0,
      child: Swiper(
        viewportFraction: 0.8,
        scale: 0.9,
        itemBuilder: (BuildContext context, int index) {
          return Image.asset(
            imageUrls[index],
            fit: BoxFit.fill,
          );
        },
        itemCount: imageUrls.length,
        pagination: SwiperPagination(),
        control: SwiperControl(),
      ),
      padding: EdgeInsets.only(bottom: 10),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _swiper(); // Llamada al método _swiper()
  }
}
