import 'package:flutter/material.dart';

class MainBanner extends StatelessWidget {
  const MainBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Row (
        children: [
          Column (
            children: const [
              Text('Acompañamiento y agenda virtual para pacientes oncológicos'),
              Text(
                  'No estás sola.',
                  style: TextStyle(
                    fontSize: 80,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
              ),
              Text('¿Te olvidas de tomar tus medicinas? ¿Sientes que nadie te entiende? ¿Utilizas un cuadernito para tu tratamiento? Comienza a utilizar a  Pipo, el compañero oncológico para que cumplas con el tratamiento con éxito.'),
            ],
            ),
          Image.asset('banner_img.png'),
        ],
      );
  }
}