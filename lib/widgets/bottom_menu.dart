import 'package:flutter/material.dart';
import '../screens/screens.dart';

class BottomMenu extends StatelessWidget {
  void displayDialog(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Alerta'),
            content: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                    'Esta sección se encuentra deshabilitada en estos momentos'),
                SizedBox(height: 10),
                FlutterLogo(size: 100),
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Aceptar')),
            ],
          );
        });
  }

  const BottomMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final home = MaterialPageRoute(builder: (context) => const ListviewScreen());
    final reserva = MaterialPageRoute(builder: (context) => const ReservaScreen());
    final viajes = MaterialPageRoute(builder: (context) => const ViajesScreen());

    return BottomAppBar(
      color: Colors.grey.shade200,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: InkWell(
                onTap: () => Navigator.pushReplacement(context, home),
                child: const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.home),
                    Text('Inicio'),
                  ],
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () => Navigator.pushReplacement(context, reserva),
                child: const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.card_travel),
                    Text('Reserva'),
                  ],
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () => Navigator.pushReplacement(context, viajes),
                child: const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.flight_takeoff),
                    Text('Viajes'),
                  ],
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () => displayDialog(context),
                child: const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.credit_card_outlined),
                    Text('Tarjetas'),
                  ],
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () => displayDialog(context),
                child: const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.flight_class_outlined),
                    Text('Tracker'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
