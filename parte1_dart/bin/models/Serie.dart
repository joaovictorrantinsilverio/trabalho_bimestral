import 'ObraAudiovisual.dart';

class Serie extends ObraAudiovisual{
  int quantidadeTemporadas;
  int duracaoEpisodios;
  int episodiosPorTemporada;

  Serie({
    required super.titulo,
    required super.nota,
    required super.dataLancamento,
    required super.genero,

    required this.quantidadeTemporadas,
    required this.episodiosPorTemporada,
    required this.duracaoEpisodios
  });

  @override
  void mostrarInfo() {
    print(
      'Série: $titulo | '
      '$duracaoEpisodios | '
      '$episodiosPorTemporada | '
      'Temporadas: $quantidadeTemporadas | '
      '$nota | '
      '$dataLancamento.year | '
      '$genero'
    );
  }
}