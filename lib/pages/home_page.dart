import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../service/gerador_numero_aleatorio_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var numeroGerado = 0;
  var quantidadeCliques = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tupi", style: GoogleFonts.pacifico())),
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.fromLTRB(16, 8, 16, 8),
        child: Column(
          //aqui lembrar do row que seria o mesmo objetivo porem na HORIZONTAL
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //container ou sizedbox (que daria pra colocar qualquer tamanho)
            Container(
              color: Colors.cyan,
              child: Text("Ações do usuário",
                  style: GoogleFonts.acme(fontSize: 20)),
            ),
            Text(
              "Foi clicado $quantidadeCliques vezes",
              style: GoogleFonts.acme(fontSize: 20),
            ),
            Text(
              "O número gerado é $numeroGerado",
              style: GoogleFonts.acme(fontSize: 20),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add_box),
        onPressed: () {
          setState(() {
            quantidadeCliques = quantidadeCliques + 1;
            numeroGerado =
                GeradorNumeroAleatorioService.gerarNumeroAleatorio(100);
          });
        },
      ),
    );
  }
}
