import 'package:fl_easyjet/screens/screens.dart';
import 'package:fl_easyjet/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ListviewScreen extends StatelessWidget {
  const ListviewScreen({super.key});

  

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

  @override
  Widget build(BuildContext context) {

    final home = MaterialPageRoute(builder: (context) => const ListviewScreen());
    final reserva = MaterialPageRoute(builder: (context) => const ReservaScreen());
    final viajes = MaterialPageRoute(builder: (context) => const ViajesScreen());
    
    return Scaffold(
      appBar: AppBar(
        actions: const [
          CircleAvatar(
            backgroundColor: Colors.grey,
            child: Icon(Icons.person),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(color: Colors.grey.shade200),
              child: Column(
                children: [
                  const Text('Manuel Zambudio Herrerías',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 25),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                    ),
                    onPressed: null,
                    child: const Text('Cerrar sesión'),
                  ),
                  const SizedBox(height: 25),
                  const Text('Restablecer contraseña',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              )),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  trailing: const Icon(Icons.arrow_forward_ios),
                  title: const Text('Reserva'),
                  onTap: () {
                    Navigator.pushReplacement(context, reserva);
                  },
                ),
                ListTile(
                  trailing: const Icon(Icons.arrow_forward_ios),
                  title: const Text('Viajes'),
                  onTap: () {
                    Navigator.pushReplacement(context, viajes);
                  },
                ),
                ListTile(
                  trailing: const Icon(Icons.arrow_forward_ios),
                  title: const Text('Tarjetas'),
                  onTap: () => displayDialog(context),
                ),
                ListTile(
                  trailing: const Icon(Icons.arrow_forward_ios),
                  title: const Text('Tracker'),
                  onTap: () => displayDialog(context),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomMenu(),
    );
  }
}
