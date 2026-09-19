|Integrantes: |
| ------------|
| João Victor Rantin Silvério |
| Gustavo Shinozaki de Freitas |

## Domínio

O trabalho utiliza como tema uma aplicação de filmes, desenvolvida para organizar obras audiovisuais. O domínio possui as classes `ObraAudiovisual`, `Filme`, `Serie` e `Catalogo`. Filme e Serie são especializações de `ObraAudiovisual`, enquanto o `Catalogo` agrupa várias obras audiovisuais, estabelecendo uma relação de composição entre `Catalogo` e `ObraAudiovisual`.

Dessa forma, cada filme ou série representa uma obra individual, e o catálogo é responsável por armazenar e organizar várias obras audiovisuais.

| # | Exercício     | Arquivo e linha | O que aparece na tela |
| - | ------------- | ------------- |   ------------- |
| 1  | Entidade principal  | `parte1-dart/bin/models/ObraAudioVisual.dart:1`  | Bloco [1]|
| 2  | Herança  | `parte1-dart/bin/models/filme.dart:3`  | Bloco [2] |
| 3  | Composição  | `parte1-dart/bin/models/Catalogo.dart:19` | Bloco [3] |
| 4  | Encapsulamento  | `parte1-dart/bin/models/Catalogo.dart:5`  |Bloco [4] |
| 5  | Estrutura de tela  | `parte2-flutter/lib/screens/home_page.dart:25`  | Tela inicial com AppBar e o total no topo |
| 6  | Cartão  | `parte2-flutter/lib/screens/obra_card.dart:14`  | Cada obra aparece em um cartão estilizado |
| 7  | Lista  | `parte2-flutter/lib/screens/home_page.dart:73` | Lista rolável com seis obras |
| 8  | Navegação | `parte2-flutter/lib/screens/home_page.dart:81`  | Ao tocar em uma obra, abre a tela de detalhes|
| 9  | Formulário  | `parte2-flutter/lib/screens/cadastro_page.dart:94`  | Tela de cadastro com três campos e botão Confirmar |
| 10 | Estado  | `parte2-flutter/lib/screens/home_page.dart:8`  | Após cadastrar, o novo item aparece na lista e o total é atualizado |


===== [1] ENTIDADE PRINCIPAL =====

Filme: Homem de Metal | 120 minutos | 8.7 | 2014-11-06 | Ação/Super-Heróis | 


===== [2] HERANÇA =====

Série: The Bois | 55 | 8 | Temporadas: 5 | 8.3 | 2019-07-26 | Ação/Super-heróis

Série: Assasino Americano | 55 | 8 | Temporadas: 5 | 9.3 | 2020-01-01 | Ação


===== [3] COMPOSIÇÃO =====

Catálogo "Meus favoritos" contém 3 obras:

  - Homem de Metal

  - The Bois


===== [4] ENCAPSULAMENTO =====

Total de Obras Audiovisuais: 4
