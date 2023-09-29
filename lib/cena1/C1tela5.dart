import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:helloworld/main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'tela 5',
      home: Cena1tela5(),
    );
  }
}

class Cena1tela5 extends StatelessWidget {
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
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 250),
                Center(
                  child: SizedBox(
                    width: 261,
                    height: 395,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MenuScreen()),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text(
                            'você chega no banheiro , mas o banheiro está lotado , o professor alcança ele , você acaba sendo enviado a coordenação onde arruma uma briga que o leva a expulsão do curso.',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.bangers(
                                fontSize: 27, color: Colors.white)),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey[850],
                        onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Center(
                    child: Text("BAD END",
                        style: GoogleFonts.bangers(
                            fontSize: 64, color: Colors.red[900]))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
