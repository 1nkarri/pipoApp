import 'package:flutter/material.dart';
import 'package:pipo_app_launch/ui/atoms/button.dart';

class Page404 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('404', style: TextStyle( fontSize: 40, fontWeight: FontWeight.bold )),
            const SizedBox( height: 10 ),
            const Text('No se encontro la pagina', style: TextStyle( fontSize: 20 )),
            CustomButton(
                text: 'Regresar',
                onPressed: () => Navigator.pushNamed(context, '/Inicio')
            ),
          ],
        ),
      ),
    );
  }
}