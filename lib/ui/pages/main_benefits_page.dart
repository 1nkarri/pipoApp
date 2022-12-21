import 'package:flutter/material.dart';
import 'package:pipo_app_launch/ui/atoms/button.dart';
import 'package:pipo_app_launch/ui/molecules/header_bar.dart';
import 'package:pipo_app_launch/ui/organisms/main_banner.dart';

class MainBenefitsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            HeaderBar(),

            const Spacer(),

            const Text('Contador Provider', style: TextStyle( fontSize: 20)),

            FittedBox(
              fit: BoxFit.contain,
              child: Padding(
                padding: const EdgeInsets.symmetric( horizontal: 10 ),
                child: Text(
                  'Contador: x',
                  style: TextStyle( fontSize: 80, fontWeight: FontWeight.bold, color: Colors.blue[700], ),
                ),
              ),
            ),

            const MainBanner(),

            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(
                    text: 'Decrementar',
                    onPressed: (){},
                  ),

                  CustomButton(
                    text: 'Incrementar',
                    onPressed: (){},
                  ),
                ]
            ),

            const Spacer(),
          ],
        ),
      );
    }
  }