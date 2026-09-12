import 'ObraAudiovisual.dart';

class Filme extends ObraAudiovisual{
  int duracao;

  Filme({
    required super.titulo,
    required super.nota,
    required super.dataLancamento,
    required super.genero,

    required this.duracao
  });

  @override
  void mostrarInfo() {
    print(
      'Filme: $titulo | '
      '$duracao minutos | '
      '$nota | '
      '$dataLancamento.year | '
      '$genero | '
    );
  }
}