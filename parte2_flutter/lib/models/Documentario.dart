import 'ObraAudiovisual.dart';

class Documentario extends ObraAudiovisual {
  String temaAbordado;
  int duracao;

  Documentario({
    required super.titulo,
    required super.nota,
    required super.dataLancamento,
    required super.genero,

    required this.temaAbordado,
    required this.duracao
  });

  @override
  void mostrarInfo() {
    print(
      'Documentario: $titulo | '
      '$duracao | '
      '$nota | '
      '$dataLancamento | '
      '$genero | '
      '$temaAbordado'
    );
  }
}