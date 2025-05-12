import 'package:fl_easyjet/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ViajesScreen extends StatelessWidget {
   
  const ViajesScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
         child: Text('ViajesScreen'),
      ),
      bottomNavigationBar: BottomMenu(),
    );
  }
}