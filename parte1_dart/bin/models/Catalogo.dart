import 'ObraAudiovisual.dart';

class Catalogo {
  String nome;
  List<ObraAudiovisual> obras = [];

  Catalogo({
    required this.nome,
  });

  void adicionar(ObraAudiovisual obra) {
    obras.add(obra);
  }
}