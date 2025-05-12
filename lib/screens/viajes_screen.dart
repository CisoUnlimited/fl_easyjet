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
      body: const Flex(
        direction: Axis.horizontal,
        children: [
          SizedBox(
            child: Column(
              children: [
                Image(image: NetworkImage('https://dailygenius.com/wp-content/uploads/2017/08/eldan_635x357.jpg'), fit: BoxFit.cover,),
                Text('ALQUILA UN COCHE'),
                Text('Viaja más lejos con estas ofertas')
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomMenu(),
    );
  }
}
