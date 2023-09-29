import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:helloworld/cena1/C1tela2.dart';
import 'package:helloworld/cena3/C3tela3.dart';
import 'package:helloworld/cena3/C3tela4.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'tela 2',
      home: Cena3tela2(),
    );
  }
}

class Cena3tela2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final altura = MediaQuery.of(context).size.height;
    final largura = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xff0d0013),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            //background
            Column(
              children: [
                Center(
                  child: Image.network("https://i.ibb.co/Fwxsmpx/fundo3.png"),
                )
              ],
            ),

            //botoes de decisão
            Column(
              children: [
                SizedBox(height: 120),
                Center(
                  child: SizedBox(
                    width: 205,
                    height: 64,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Cena3tela3()),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Aceito',
                            style: GoogleFonts.bangers(
                                fontSize: 24, color: Colors.white)),
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
                SizedBox(height: 32),
                Center(
                  child: SizedBox(
                    width: 205,
                    height: 64,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Cena3tela4()),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Não aceito',
                            style: GoogleFonts.bangers(
                                fontSize: 24, color: Colors.white)),
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
              ],
            ),

            Positioned(
                left: 90,
                top: 440,
                child: Image.network("https://i.ibb.co/X4t5trg/charp3.png")),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 640),
                Center(
                  child: SizedBox(
                    width: 366,
                    height: 120,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('caramba professor ... bem .. eu',
                            style: GoogleFonts.bangers(
                                fontSize: 17, color: Colors.black)),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
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
