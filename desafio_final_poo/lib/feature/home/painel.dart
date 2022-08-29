import 'package:desafio_final_poo/feature/add_task/add_task.dart';
import 'package:desafio_final_poo/feature/modify_task/modify_task.dart';
import 'package:desafio_final_poo/feature/my_task/my_task.dart';
import 'package:desafio_final_poo/util/clean.dart';
import 'package:desafio_final_poo/util/linha.dart';

import '../../interface/page_interface.dart';
import '../../util/read.dart';

class painel implements Page {
  @override
  void init() {
    Linha.linha();
    print("Bem-vindo a sua lista de tarefas.");
    Linha.linha();
    print("1- Ver tarefas.");
    print("2- Adicionar tarefas.");
    print("3- Modificar estados das tarefas.");
    print("0- Sair.");

    final escolha = Read.readInt(message: "Escolha uma das opções acima.");

    if (escolha == 1) {
      MyTask().init();
    } else if (escolha == 2) {
      AddTask().init();
    } else if (escolha == 3) {
      ModifyTask().init();
    } else if (escolha == 0) {
      Clean.clean();
      Linha.linha();
      print("Saindo...");
      Linha.linha();
    }
  }
}
