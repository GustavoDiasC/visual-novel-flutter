import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:helloworld/cena1/C1tela7.dart';
import 'package:helloworld/cena1/C1tela8.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'tela 6',
      home: Cena1tela6(),
    );
  }
}

class Cena1tela6 extends StatelessWidget {
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
                SizedBox(height: 150),
                Center(
                  child: SizedBox(
                    width: 302,
                    height: 450,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            'o professor parece acreditar mais ainda assim da uma advertência nele , dizendo que isso não é nada correto e que não deveria se repetir, bruno apenas aceita o conselho e entra na sala, dentro da sala o professor passa uma atividade que pode conceder uma dispensa, e pede para que você  resolva ela no quadro na frente de todo mundo.',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.bangers(
                                fontSize: 26, color: Colors.white)),
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
                  child: SizedBox(
                    width: 187,
                    height: 55,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Cena1tela8()),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Aceitar',
                            style: GoogleFonts.bangers(
                                fontSize: 17, color: Colors.white)),
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
                  child: SizedBox(
                    width: 187,
                    height: 55,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Cena1tela7()),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Recusar',
                            style: GoogleFonts.bangers(
                                fontSize: 17, color: Colors.white)),
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
