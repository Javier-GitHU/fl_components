import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;
  const CustomTextFormField({super.key, this.hintText, this.labelText, this.helperText, this.icon, this.suffixIcon, this.keyboardType, required this.obscureText});


  @override
  Widget build(BuildContext context) {
   return TextFormField(
          autofocus: true, //Al entrar a la pagina el primer elemento del formulario hara que salga el teclado
          textCapitalization: TextCapitalization.words,//Primera letra de cada palabra la hace mayuscula
          keyboardType: keyboardType,
          obscureText: obscureText,
          onChanged: (value){
            print('value: $value');
          },
          validator: (value){
            if ( value!.length < 3){
              return 'Minimo 3 caracteres';
            }
          },
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration:  InputDecoration(
            hintText: hintText,
            labelText: labelText,
            helperText: helperText,
            //prefixIcon: Icon(Icons.verified_user_outlined),
            icon: Icon(icon),
            suffixIcon: Icon(suffixIcon),
            /*border: OutlineInputBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                topRight: Radius.circular(20)
              )
            )
            */
          )
        );
  }

  }