import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:helloworld/main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'tela 6',
      home: Cena2tela6(),
    );
  }
}

class Cena2tela6 extends StatelessWidget {
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
                SizedBox(height: 130),
                Center(
                  child: SizedBox(
                    width: 261,
                    height: 544,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MenuScreen()),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            'você diz que não vai aceitar , perde a oportunidade e agora terá que ficar ate o final do curso realizando milhares de atividades inúteis e fúteis , acaba ficando sem tempo para se preocupar com seu desenvolvimento pessoal na área e termina o curso sem saber fazer nada.',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.bangers(
                                fontSize: 27, color: Colors.white)),
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
