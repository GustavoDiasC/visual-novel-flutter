import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:helloworld/main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'tela 7',
      home: Cena4tela7(),
    );
  }
}

class Cena4tela7 extends StatelessWidget {
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
                  child: Image.network("https://i.ibb.co/1ZX8Ljp/fundo5.png"),
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
                    width: 302,
                    height: 418,
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
                            'o professor se sente profundamente ofendido com o seu comentário e diz que por conta da sua prepotencia todos poderam fazer o teste menos você , você acaba ficando sem nenhum argumento e termina sendo o único a cursar essa disciplina ate o final do curso.',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.bangers(
                                fontSize: 24, color: Colors.white)),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue[800],
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
