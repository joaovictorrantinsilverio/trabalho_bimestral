import 'package:flutter/material.dart';
import 'models/Catalogo.dart';
import 'models/Filme.dart';
import 'models/Serie.dart';
import 'screens/home_page.dart';

void main() {
  
  final catalogo = Catalogo(
    nome: 'Catálogo de Filmes',
  );

  catalogo.adicionar(
    Filme(
      titulo: 'Homem de Metal',
      duracao: 120,
      nota: 7.9,
      dataLancamento: DateTime(2008, 05, 02),
      genero: 'Ação/Super-Herói',
    ),
  );

  catalogo.adicionar(
    Serie(
      titulo: 'Breaking Good',
      duracaoEpisodios: 55,
      nota: 9.5,
      dataLancamento: DateTime(2008, 01, 20),
      genero: 'Drama/Suspense',
      quantidadeTemporadas: 5,
      episodiosPorTemporada: 8,
    ),
  );

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(
        catalogo: catalogo,
      ),
    ),
  );
}