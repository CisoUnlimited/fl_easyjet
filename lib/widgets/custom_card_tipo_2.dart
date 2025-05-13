import 'package:flutter/material.dart';

class CustomCardTipo2 extends StatelessWidget {
  final String imageUrl;
  final String? titulo;
  final String? descripcion;

  const CustomCardTipo2({super.key, required this.imageUrl, this.titulo, this.descripcion});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: const AssetImage('assets/images/jar-loading.gif'),
            width: double.infinity,
            height: 220,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
          ),
          if(titulo != null)
          Container(
              alignment: AlignmentDirectional.topStart,
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(titulo ?? 'Desconocido', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16), ),
                  if(descripcion != null)
                  Text(descripcion ?? 'Desconocido', style: const TextStyle(fontSize: 12),)
                ],
              )
              )
        ],
      ),
    );
  }
}
