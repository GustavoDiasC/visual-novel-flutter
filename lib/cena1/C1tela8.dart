import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:helloworld/cena2/C2tela1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'tela 8',
      home: Cena1tela8(),
    );
  }
}

class Cena1tela8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final altura = MediaQuery.of(context).size.height;
    final largura = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xff0d0013),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Center(
                  child: Image.network("https://i.ibb.co/Wcp5BLr/fundo1.png"),
                )
              ],
            ),
            Positioned(
                top: 430,
                child: Image.network("https://i.ibb.co/TRSJ1ms/profp3.png")),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 620),
                Center(
                  child: SizedBox(
                    width: 366,
                    height: 120,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Cena2tela1()),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            'Hum... ta errado isso ai em , mas vou deixar passar por que minha lua está em escorpião esse mês.',
                            style: GoogleFonts.bangers(
                                fontSize: 17, color: Colors.black)),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.pink[100],
                        onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                          side: BorderSide(width: 5, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
