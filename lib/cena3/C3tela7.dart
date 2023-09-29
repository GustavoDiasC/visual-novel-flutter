import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:helloworld/cena4/C4tela1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'tela 7',
      home: Cena3tela7(),
    );
  }
}

class Cena3tela7 extends StatelessWidget {
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
                  child: Image.network("https://i.ibb.co/Fwxsmpx/fundo3.png"),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 120),
                Center(
                  child: SizedBox(
                    width: 260,
                    height: 464,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Cena4tela1()),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            'O professor faz varias piadas sobre a situação , todos dão risada se divertem e no final o professor decide aplicar o desafio a todos concedendo dispensa a todos que forem aprovados , você consegue a dispensa.',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.bangers(
                                fontSize: 27, color: Colors.white)),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff712209),
                        onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
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
