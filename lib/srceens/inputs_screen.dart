import 'package:fl_components/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forms: Inputs'),
      ),
      body: const SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        children: [
          CustomTextFormField(
            hintText: 'Nombre',
            labelText: 'Nombre del usuario',
            helperText: 'Solo letras',
            icon: Icons.verified_user_outlined,
            suffixIcon: Icons.person_2_rounded, 
            obscureText: false,
          ),
          SizedBox(height: 30,),
          CustomTextFormField(
            hintText: 'Apellidos',
            labelText: 'Apellidos del usuario',
            icon: Icons.person_4_outlined,
            obscureText: false,
          ),
             SizedBox(height: 30,),
          CustomTextFormField(
            hintText: 'E-mail',
            labelText: 'E-Mail del usuario',
            icon: Icons.email_rounded,
            obscureText: false,
            keyboardType: TextInputType.emailAddress,//Sale el arroba en el teclado principal,
          ),
          CustomTextFormField(
            hintText: 'Contraseña',
            labelText: 'Contraseña del usuario',
            icon: Icons.password_rounded,
            obscureText: true,
          ),
        ],
      ),
      ),
    );
  }
}
  