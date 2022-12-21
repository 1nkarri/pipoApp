import 'package:flutter/material.dart';
import 'package:pipo_app_launch/ui/atoms/button.dart';

class HeaderBar extends StatelessWidget {
  HeaderBar({super.key});

  get children => null;

  Color colorTextHeader = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Container (
      width: double.infinity,
      height: 96,
      color: Colors.white,

      child: Row (
        children: [
          Image.asset(
            'peopl_logo.png',
            width: 150,
          ),
          CustomButton(
            text: 'Inicio',
            onPressed: () => Navigator.pushNamed(context, '/Inicio'),
            color: colorTextHeader,
          ),
          CustomButton(
            text: 'Beneficios',
            onPressed: () => Navigator.pushNamed(context, '/Beneficios'),
            color: colorTextHeader,
          ),
          CustomButton(
            text: '¿Cómo unirme?',
            onPressed: () => Navigator.pushNamed(context, '/abc'),
            color: colorTextHeader,
          ),
          CustomButton(
            text: 'Testimonios de la comunidad',
            onPressed: (){},
            color: colorTextHeader,
          ),
          CustomButton(
            text: 'Preguntas Frecuentes',
            onPressed: (){},
            color: colorTextHeader,
          ),
          CustomButton(
            text: 'Equipo',
            onPressed: (){},
            color: colorTextHeader,
          ),
        ],
      ),
    );
  }
}
