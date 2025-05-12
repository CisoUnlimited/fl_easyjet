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
            onPressed: () {},
            icon: const Icon(Icons.list),
            color: Colors.white,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              const CircleAvatar(
                maxRadius: 80,
                backgroundImage: NetworkImage(
                    'https://t4.ftcdn.net/jpg/00/30/42/27/360_F_30422752_w1SUKUMnnAzhgYSNd01A1oXSYncJizkU.jpg'),
              ),
              const SizedBox(height: 20),
              const Text('No tienes reservas', style: TextStyle(fontSize: 20)),
              const SizedBox(height: 20),
              const Text(
                  '¿Tienes un número de referencia? Añade tu reserva ahora.'),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {}, child: const Text('Añadir reserva', style: TextStyle(color: Colors.white))),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomMenu(),
    );
  }
}
