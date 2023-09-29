import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:helloworld/main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'tela 8',
      home: Cena4tela8(),
    );
  }
}

class Cena4tela8 extends StatelessWidget {
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
                    height: 427,
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
                            'Você decide não responder a questão do professor e acaba perdendo a oportunidade , espera por muito tempo uma outra oportunidade ... mas não acontece e você acaba tendo que ficar ate o final do curso.',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.bangers(
                                fontSize: 28, color: Colors.white)),
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
