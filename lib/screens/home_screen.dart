import 'package:fl_easyjet/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:fl_easyjet/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final myFormKey = GlobalKey<FormState>();
    final Map<String, String> formValues = {
      'email': '',
      'pass': '',
    };

    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Center(
          child: Image(
            image: AssetImage('assets/images/easyjetlogo.png'),
            height: 100,
            width: 200,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: 340,
            child: Column(
              children: [
                const Text(
                    "Inicia sesión para añadir tus reservas automáticamente"),
                const SizedBox(height: 30),
                Form(
                  key: myFormKey,
                  child: Column(
                    children: [
                      CustomTextFormField(
                        hintText: 'Email',
                        labelText: 'Email',
                        formProperty: 'email',
                        keyboardType: TextInputType.emailAddress,
                        formValues: formValues,
                      ),
                      const SizedBox(height: 30),
                      CustomTextFormField(
                        hintText: 'Contraseña',
                        labelText: 'Contraseña',
                        obscureText: true,
                        formProperty: 'password',
                        formValues: formValues,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context)
                        .requestFocus(FocusNode()); // Cierra el teclado
                    if (!myFormKey.currentState!.validate()) {
                      // Si el formulario no es válido, no se envía
                      print('Formulario no válido');
                      return;
                    }
                    print(formValues);
                    final route = MaterialPageRoute(
                        builder: (context) => const ListviewScreen());
                    Navigator.pushReplacement(context, route);
                  },
                  child: const SizedBox(
                      width: 280,
                      child: Center(
                          child: Text('Iniciar sesión',
                              style: TextStyle(color: Colors.white)))),
                ),
              ],
            ),
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, 'remember');
          },
          child: const Text(
            '¿Olvidaste tus datos?',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
      ],
    ));
  }
}
