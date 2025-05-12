import 'package:fl_easyjet/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ReservaScreen extends StatelessWidget {
   
  const ReservaScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reservar viaje'),
        actions: [
          IconButton(
            onPressed: () {
              
            },
            icon: const Icon(Icons.list),
          ),
        ],
      ),
      body: const Center(
         child: Text('ReservaScreen'),
      ),
      bottomNavigationBar: const BottomMenu(),
    );
  }
}