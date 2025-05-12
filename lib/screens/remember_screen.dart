import 'package:fl_easyjet/widgets/widgets.dart';
import 'package:flutter/material.dart';

class RememberScreen extends StatelessWidget {
  const RememberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final myFormKey = GlobalKey<FormState>();
    final Map<String, String> formValues = {
      'email': '',
    };

    return Scaffold(
        appBar: AppBar(
          title: const Text('Restablecer contraseña',
              style: TextStyle(color: Colors.white)),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[200],
                  ),
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                      'Introduce tu dirección de correo electrónico y te enviaremos un enlace para restablecer tu contraseña. Recuerda que tendrás que cerrar sesión en tu cuenta en la aplicación e iniciar sesión de nuevo inmediatamente depués de haber reseteado tu contraseña.',
                      style: TextStyle(fontSize: 15))),
              const SizedBox(height: 20),
              Form(
                key: myFormKey,
                child: CustomTextFormField(
                  hintText: 'Dirección de mail',
                  labelText: 'Dirección de mail',
                  formProperty: 'email',
                  keyboardType: TextInputType.emailAddress,
                  formValues: formValues,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 40)),
                  onPressed: () {
                    FocusScope.of(context)
                        .requestFocus(FocusNode()); // Cierra el teclado
                    if (!myFormKey.currentState!.validate()) {
                      // Si el formulario no es válido, no se envía
                      print('Rellena tu dirección de correo electrónico');
                      return;
                    }
                    print(formValues);
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Restablecer contraseña',
                    style: TextStyle(color: Colors.white),
                  )),
            ],
          ),
        ));
  }
}
