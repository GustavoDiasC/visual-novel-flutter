import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:helloworld/cena2/C2tela5.dart';
import 'package:helloworld/cena2/C2tela6.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'tela 4',
      home: Cena2tela4(),
    );
  }
}

class Cena2tela4 extends StatelessWidget {
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
                  child: Image.network("https://i.ibb.co/M7JMQBG/fundo2.png"),
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
                    width: 295,
                    height: 243,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                            'O professor propôs um desafio você vai aceitar?',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.bangers(
                                fontSize: 32, color: Colors.white)),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green[900],
                        onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Center(
                  child: SizedBox(
                    width: 222,
                    height: 87,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Cena2tela5()),
                        );
                      },
                      child: Padding(
                        padding: EdgeInsets.all(2.0),
                        child: Text('Sim',
                            style: GoogleFonts.bangers(
                                fontSize: 32, color: Colors.white)),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green[900],
                        onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Center(
                  child: SizedBox(
                    width: 222,
                    height: 87,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Cena2tela6()),
                        );
                      },
                      child: Padding(
                        padding: EdgeInsets.all(2.0),
                        child: Text('Não',
                            style: GoogleFonts.bangers(
                                fontSize: 32, color: Colors.white)),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green[900],
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
          ],
        ),
      ),
    );
  }
}
