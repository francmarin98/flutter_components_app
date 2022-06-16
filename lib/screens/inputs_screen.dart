import 'package:components_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, dynamic> formValues = {
      'name': 'Francisco',
      'lastName': 'Marin',
      'email': 'francisco@google.com',
      'password': '123456',
      'role': 'Admin'
    };

    return Scaffold(
      appBar: AppBar(title: const Text('Inputs y Forms')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Form(
          key: myFormKey,
          child: Column(
            children: [
              CustomTextFormField(
                labelText: 'Nombre',
                hintText: 'Nombre del usuario',
                formProperty: 'name',
                formValues: formValues,
              ),
              const SizedBox(height: 30),

               CustomTextFormField(
                labelText: 'Apellido',
                hintText: 'Apellido del usuario', 
                formProperty: 'lastName', 
                formValues: formValues,
              ),
              const SizedBox(height: 30),

               CustomTextFormField(
                labelText: 'Correo',
                hintText: 'Correo del usuario',
                keywordType: TextInputType.emailAddress, 
                formProperty: 'email',
                formValues: formValues, 
              ),
              const SizedBox(height: 30),

               CustomTextFormField(
                labelText: 'Contraseña',
                hintText: 'Contraseña del usuario',
                isPassword: true, 
                formProperty: 'password',
                formValues: formValues, 
              ),
              const SizedBox(height: 30),

              DropdownButtonFormField<String>(
                value: 'admin',
                items: const[
                  DropdownMenuItem(
                    value: 'admin', child: Text('Admin')
                  ),
                  DropdownMenuItem(
                    value: 'super-admin', child: Text('Super-Admin')
                  ),
                  DropdownMenuItem(
                    value: 'user', child: Text('User')
                  ),
                ], 
                onChanged: (value){
                  print(value);
                  formValues['role'] =  value ?? 'Admin';
                }
              ),

              ElevatedButton(
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('Enviar formulario')),
                  ),
                  onPressed: () {

                    FocusManager.instance.primaryFocus?.unfocus();

                    if (!myFormKey.currentState!.validate()) {
                      print('Form Invalid!!');
                      return;
                    }

                    print(formValues);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
