import 'package:flutter/material.dart';
import 'detalhes.dart';

class Filme{
  final String titulo;
  final String descricao;
  final String imagem;

  Filme({
    required this.titulo,
    required this.descricao,
    required this.imagem
  });

}

class ListPage extends StatelessWidget {
  ListPage({super.key});
  final List<Filme> lista_filmes = [
    Filme(titulo: "Rambo", descricao: "é o rambo 1", imagem: "assets/images/rambo.jpg"),
    Filme(titulo: "Rambo 2", descricao: "é o rambo 2", imagem: "assets/images/rambo2.jpg"),
    Filme(titulo: "Rambo 3", descricao: "é o rambo no oriente médio", imagem: "assets/images/rambo3.jpg"),
    Filme(titulo: "Rambo 4", descricao: "o rambo 4 não assisti eu acho", imagem: "assets/images/rambo4.png"),
    Filme(titulo: "Rambo 5", descricao: "esse é zika", imagem: "assets/images/rambo5.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF221f1f),

      appBar: AppBar(
        title: Image.network(
          'https://cdn4.iconfinder.com/data/icons/logos-and-brands/512/227_Netflix_logo-512.png',
          fit: BoxFit.contain,
          width: 50,
          height: 50,
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF292f33),
      ),

      body:
        ListView.builder(
          itemCount: lista_filmes.length,
          itemBuilder: (context, index){
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context)=>DetalhesFilmePage(
                            filme: lista_filmes[index]
                        )
                    )
                );
              },

              child: Container(
                width: 200,
                height: 250,
                child: Column(
                  children: [
                    Image.asset(
                      lista_filmes[index].imagem,
                      width: 150,
                      height: 200,
                    ),
                    Text(lista_filmes[index].titulo, style: TextStyle(color: Color(0xFFf5f5f1)),),
                    Text(lista_filmes[index].descricao, style: TextStyle(color: Color(0xFFf5f5f1)),),

                  ],
                ),
              ),
            );

          },
        ),
    );
  }
}
