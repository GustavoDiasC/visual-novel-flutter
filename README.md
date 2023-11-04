# VsTeachers 🔥

Em "VsTeachers", os jogadores assumem o papel de um aluno determinado a se formar mais rápido do que o previsto. Com o objetivo de adiantar as disciplinas do curso, o protagonista enfrenta os desafios únicos apresentados por quatro professores distintos, cada um com personalidades e estilos de ensino peculiares.

Os jogadores devem equilibrar suas interações sociais com os personagens, tomando decisões estratégicas para impressionar os professores e garantir sua aprovação em cada matéria. A narrativa se desenrola em meio a desafios acadêmicos complexos, rivalidades entre estudantes e escolhas morais cruciais que podem afetar o desfecho do jogo.

Tabela de conteúdos
=================
<!--ts-->
   * [Sobre o projeto](#-sobre-o-projeto)
   * [Funcionalidades](#-funcionalidades)
   * [Layout](#-layout)
   * [Como executar o projeto](#-como-executar-o-projeto)
   * [Autor](#-autor)
<!--te-->


## Sobre o projeto 💻

Esse foi um projeto desenvolvido em dart pelo framework flutter , como um exercicio para praticar o fluxo de telas no flutter, desenvolvido durante o curso tecnico de informatica que eu cursei no periodo de 2020 a 2023 , todas as artes presentes nele como balões de fala, personagens e elementos de interface foram criados por mim.


## Funcionalidades 🔧

Cada tela e composta basicamente por uma mesma estrutura alterando apenas a imagens  seguindo o modelo do codigo abaixo:

``` bash 
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:helloworld/cena1/C1tela2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'tela 1',
      home: Cena1tela1(),
    );
  }
}

class Cena1tela1 extends StatelessWidget {
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
                  child: Image.network(
                    "https://i.ibb.co/Wcp5BLr/fundo1.png",
                  ),
                )
              ],
            ),
            Positioned(
                top: 430,
                child: Image.network("https://i.ibb.co/wNtkXS0/charp.png")),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 660),
                Center(
                  child: SizedBox(
                    width: 366,
                    height: 120,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Cena1tela2()),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text(
                            'cara esse professor é muito sem noção, ele passa atividades sem contexto nenhum..., como ele espera que isso seja util para a gente?',
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

```

<img src="https://i.ibb.co/wSrns1D/image.png">




## Layout

O layout da aplicação está disponível no Figma:

<a href="https://www.figma.com/file/ZPyRFdvT7kv7EcamI381iD/jogo-visual-novel?type=design&node-id=1-3&mode=design&t=54h91WP5wKbxzWBS-0">
  <img alt="Made by tgmarinho" src="https://img.shields.io/badge/Acessar%20Layout%20-Figma-%2304D361">
</a>

## Como executar o projeto

Para executar esse projeto você precisará de um ambiente de desenvolvimento Flutter instalado em sua máquina, mas é possivel executa-lo por uma ferramenta online a ide flutlab.


-- Acesse o site do flutlab : <a href="flutlab.io">Flutlab</a>

-- Crie uma conta no site e em seguida clique em  + New Project.

-- selecione a opção (upload as a ZIP file) apos isso arraste o arquivo rar baixado do repositorio para a area do site e apos o carregamente execute como cliente web.

## Autor
Gustavo dias charra - Estudante de programação e design de interfaces.