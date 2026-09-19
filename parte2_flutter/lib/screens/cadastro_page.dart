import 'package:flutter/material.dart';

import '../models/Catalogo.dart';
import '../models/Filme.dart';

// StatefulWidget porque a tela possui campos de entrada e controllers que precisam ser gerenciados durante a telaa.
class CadastroPage extends StatefulWidget {
  // recebe o mesmo Catalogo utilizado pela HomePage.
  final Catalogo catalogo;

  const CadastroPage({
    super.key,
    required this.catalogo,
  });

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

// State responsável pelo funcionamento da tela de cadastro.
class _CadastroPageState extends State<CadastroPage> {

  final tituloController = TextEditingController();
  final notaController = TextEditingController();
  final duracaoController = TextEditingController();

  // libera os controllers quando a tela é encerrada.
  @override
  void dispose() {
    tituloController.dispose();
    notaController.dispose();
    duracaoController.dispose();

    super.dispose();
  }

  // função executada quando o botão Confirmar é pressionado.
  void cadastrarFilme() {

    // recupera o texto digitado no campo de título.
    final titulo = tituloController.text;

    // converte a nota de String para double.
    final nota = double.tryParse(notaController.text);

    // converte a duração de String para int.
    final duracao = int.tryParse(duracaoController.text);

    // verifica se o título está vazio ou se alguma conversão numérica falhou.
    if (titulo.isEmpty || nota == null || duracao == null) {

      // exibe mensagem de erro na parte inferior da tela.
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Preencha os campos corretamente.'),
        ),
      );

      // impede que o cadastro continue.
      return;
    }

    // cria um novo objeto Filme utilizando os dados recuperados através dos TextEditingControllers.
    final novoFilme = Filme(
      titulo: titulo,
      nota: nota,
      duracao: duracao,

      // atributos preenchidos automaticamente por conta do limite de campos no cadastro
      dataLancamento: DateTime.now(),
      genero: 'Não informado',
    );

    // adiciona o novo filme ao catalogo
    Navigator.of(context).pop(novoFilme);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // barra superior da tela de cadastro.
      appBar: AppBar(
        title: const Text('Cadastrar Filme'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),

        child: Column(
          children: [

            // campo 1: título do filme.
            TextFormField(
              controller: tituloController,

              // InputDecoration permite personalizar o campo.
              decoration: InputDecoration(
                labelText: 'Título',
                prefixIcon: const Icon(Icons.movie),

                // borda arredondada solicitada no enunciado.
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),

            const SizedBox(height: 16),

            // campo 2: nota do filme.
            TextFormField(
              controller: notaController,

              // teclado numérico para facilitar a entrada da nota.
              keyboardType: TextInputType.number,

              decoration: InputDecoration(
                labelText: 'Nota',
                prefixIcon: const Icon(Icons.star),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),

            const SizedBox(height: 16),

            // campo 3: duração do filme.
            TextFormField(
              controller: duracaoController,

              // teclado numérico porque a duração é um int.
              keyboardType: TextInputType.number,

              decoration: InputDecoration(
                labelText: 'Duração em minutos',
                prefixIcon: const Icon(Icons.timer),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),

            const SizedBox(height: 24),

            // botão responsável por confirmar o cadastro.
            ElevatedButton(
              onPressed: cadastrarFilme,
              child: const Text('Confirmar'),
            ),
          ],
        ),
      ),
    );
  }
}