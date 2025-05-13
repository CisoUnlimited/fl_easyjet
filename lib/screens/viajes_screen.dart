import 'package:fl_easyjet/widgets/custom_card_tipo_2.dart';
import 'package:fl_easyjet/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ViajesScreen extends StatelessWidget {
  const ViajesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Image(
            image: AssetImage('assets/images/easyjetlogowhite.png'),
            height: 50,
            width: 100),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.list),
            color: Colors.white,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.grey[300],
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: CustomCardTipo2(
                      imageUrl:
                          'https://dailygenius.com/wp-content/uploads/2017/08/eldan_635x357.jpg',
                      titulo: 'Alquiler de coches',
                      descripcion: '¿Necesitas reservar un vehículo? Compara los precios del alquiler de coches para obtener la mejor oferta',
                    ),
                  ),
                  Expanded(
                    child: CustomCardTipo2(
                      imageUrl:
                          'https://www.easyjet.com/ejcms/cache/medialibrary/Images/JSS/Homepage/OurPartnersPanelMedia/Airportr-HP-Tile-382.png?h=260&iar=0&w=382&hash=FB038010D77CD79427DD72116ADF958B',
                      titulo: 'VIAJA SIN EQUIPAJE',
                      descripcion: 'Solicita que recojan tu equipaje, lo facturen y te lo entreguen',
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Container(
                      alignment: Alignment.centerLeft,
                      child: const Text('TOP DESTINOS', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    children: [
                      Expanded(
                        child: CustomCardTipo2(
                            imageUrl:
                                'https://res.cloudinary.com/dtljonz0f/image/upload/c_auto,ar_1:1,w_3840,g_auto/f_auto/q_auto/v1/gc-v1/paris/3%20giorni%20a%20Parigi%20Tour%20Eiffel?_a=BAVAZGE70',
                            titulo: 'PARÍS'),
                      ),
                      Expanded(
                        child: CustomCardTipo2(
                            imageUrl:
                                'https://media.grandvoyage.com/__sized__/voyages/5_Viaje_a_Suiza_de_7_dias__Ginebra_Zurich_y_Cataratas_del_Rin-thumbnail_webp-1920x960.webp',
                            titulo: 'GINEBRA'),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: const BottomMenu(),
    );
  }
}