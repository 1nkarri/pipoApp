import 'package:flutter/material.dart';
import 'package:pipo_app_launch/ui/atoms/button.dart';
import 'package:pipo_app_launch/ui/molecules/header_bar.dart';
import 'package:pipo_app_launch/ui/organisms/main_banner.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int counter = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            HeaderBar(),

            const Spacer(),

            const Text('Contador Stateful', style: TextStyle( fontSize: 20,),),

            Text(
              'Contador: $counter',
              style: TextStyle( fontSize: 80, fontWeight: FontWeight.bold, color: Colors.blue[700], ),
            ),

            const MainBanner(),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                  text: 'Decrementar',
                  onPressed: () => setState(() => counter --),
                ),

                CustomButton(
                  text: 'Incrementar',
                  onPressed: () => setState(() => counter ++),
                ),
              ]
            ),

            const Spacer(),
          ],
        ),
      );
  }
}