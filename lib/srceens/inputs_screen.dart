import 'package:fl_components/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myFormKey = GlobalKey<FormState>();
    final ValueNotifier<bool> _checkEnabled = ValueNotifier<bool>(true);
    final Map<String, String> formValues = {
      'nombre': 'Andres',
      'apellido': 'Iniesta',
      'email': 'iniesta@gmail.com',
      'password': '123456',
      'role': 'usuario'
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Forms: Inputs'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Form(
          key: myFormKey,
          child: Column(
            children: [
              CustomTextFormField(
                hintText: 'Nombre',
                labelText: 'Nombre del usuario',
                helperText: 'Solo letras',
                icon: Icons.verified_user_outlined,
                suffixIcon: Icons.person_2_rounded,
                obscureText: false,
                formProperty: 'Nombre',
                formValues: formValues,
              ),
              const SizedBox(
                height: 30,
              ),
              CustomTextFormField(
                hintText: 'Apellidos',
                labelText: 'Apellidos del usuario',
                icon: Icons.person_4_outlined,
                obscureText: false,
                formProperty: 'Apellidos',
                formValues: formValues,
              ),
              const SizedBox(
                height: 30,
              ),
              CustomTextFormField(
                hintText: 'E-mail',
                labelText: 'E-Mail del usuario',
                icon: Icons.email_rounded,
                obscureText: false,
                keyboardType: TextInputType
                    .emailAddress, //Sale el arroba en el teclado principal,
                formProperty: 'E-Mail',
                formValues: formValues,
              ),
              const SizedBox(
                height: 30,
              ),
              CustomTextFormField(
                hintText: 'Contraseña',
                labelText: 'Contraseña del usuario',
                icon: Icons.password_rounded,
                obscureText: true,
                formProperty: 'Contraseña',
                formValues: formValues,
              ),
              const SizedBox(height: 30),
              DropdownButtonFormField(
                  items: const [
                    DropdownMenuItem(child: Text('Usuario'), value: 'usuario'),
                    DropdownMenuItem(child: Text('Editor'), value: 'editor'),
                    DropdownMenuItem(
                        child: Text('Programador'), value: 'programador'),
                    DropdownMenuItem(
                        child: Text('Administrador'), value: 'administrador'),
                  ],
                  onChanged: ((value) {
                    print(value);
                    formValues['role'] = value ?? 'usuario';
                  })),
              const SizedBox(height: 30),
              ValueListenableBuilder<bool>(
                  valueListenable: _checkEnabled,
                  builder: (context, value, _) {
                    return Checkbox(
                        value: value,
                        onChanged: (newValue) {
                          _checkEnabled.value = newValue ?? true;
                        });
                  }),
              const SizedBox(height: 30),
              ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context).requestFocus(
                        FocusNode()); //Desaparece el teclado al darle a enviar
                    if (!myFormKey.currentState!.validate()) {
                      print('Formulario no valido');
                      return;
                    }
                  },
                  child: const SizedBox(
                      width: double.infinity,
                      child: Center(child: Text('Enviar'))))
            ],
          ),
        ),
      ),
    );
  }
}
