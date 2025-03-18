import 'package:flutter/material.dart';
import 'list.dart';

class DetalhesFilmePage extends StatelessWidget {
  final Filme filme;


  const DetalhesFilmePage({super.key, required this.filme});

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

      body: Center(child: Column(
        children: [
          Container(
            color: Colors.black,
            width: 500,
            height: 450,
            child: Image.asset(
                filme.imagem,
                height: 450,

              ),
          ),
          Text(filme.titulo,
            style: TextStyle(
              fontSize: 50,
              fontFamily: 'BebasNeue',
              color: Color(0xFFf5f5f1),
            ),
          ),
          Text(filme.descricao,
            style: TextStyle(
              color: Color(0xFFf5f5f1)
            ),
          ),
        ],
      ),),
    );
  }
}
