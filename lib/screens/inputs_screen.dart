import 'package:components_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Inputs y Forms')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: const [
            CustomTextFormField(
              labelText: 'Nombre',
              hintText: 'Nombre del usuario',
            ),
            SizedBox(height: 30),

            CustomTextFormField(
              labelText: 'Apellido',
              hintText: 'Apellido del usuario',
            ),
            SizedBox(height: 30),

            CustomTextFormField(
              labelText: 'Correo',
              hintText: 'Correo del usuario',
              keywordType: TextInputType.emailAddress,
            ),
            SizedBox(height: 30),

            CustomTextFormField(
              labelText: 'Contraseña',
              hintText: 'Contraseña del usuario',
              isPassword: true,
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}


