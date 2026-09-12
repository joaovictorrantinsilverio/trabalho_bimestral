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
}