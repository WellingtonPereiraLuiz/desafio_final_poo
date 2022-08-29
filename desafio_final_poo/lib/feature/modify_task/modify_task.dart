import 'package:desafio_final_poo/feature/home/painel.dart';
import 'package:desafio_final_poo/interface/page_interface.dart';
import 'package:desafio_final_poo/interface/task_interface.dart';
import 'package:desafio_final_poo/model/leisure_model.dart';
import 'package:desafio_final_poo/model/meet_model.dart';
import 'package:desafio_final_poo/model/other_model.dart';
import 'package:desafio_final_poo/util/clean.dart';
import 'package:desafio_final_poo/util/linha.dart';
import 'package:desafio_final_poo/util/read.dart';
import 'package:desafio_final_poo/util/task.dart';

class ModifyTask implements Page {
  @override
  void init() {
    late int choice;
    do {
      Clean.clean();
      Linha.linha();
      print("1- Apagar tarefa.");
      print("2- Concluir tarefa.");
      print("0- Voltar ao menu inicial.");
      choice = Read.readInt(message: "Escolha uma das opções acima.");
      Linha.linha();
      if (choice == 1) {
        deleteTask();
      } else if (choice == 2) {
        finalizarTask();
      } else if (choice == 0) {
        Clean.clean();
        painel().init();
      }
    } while (choice != 0);
  }

  void deleteTask() {
    myList();
    int taskIndex =
        Read.readInt(message: 'Selecione uma atividade para apagar:');

    if (taskIndex < allTask.length && taskIndex > 0) {
      allTask[taskIndex]
          .finish(); //nao lembro como apagar maps dentro de listas;-;-;-;-;;-;---
    }
  }

  void finalizarTask() {
    myList();
    int taskIndex =
        Read.readInt(message: 'Selecione uma atividade para finalizar:');

    if (taskIndex < allTask.length && taskIndex > 0) {
      allTask[taskIndex].finish();
    }
  }

  void myList() {
    if (allTask.isEmpty) {
      Linha.linha();
      print("Nenhuma tarefa cadastrada...");
    } else {
      for (int i = 0; i < allTask.length; i++) {
        final task = allTask[i];
        _showTitle(task, i + 1);
        if (task is MeetTaskModel) {
          _meetInfo(task);
        }
        if (task is LeisureTaskModel) {
          _leisureInfo(task);
        }
        if (task is OtherTaskModel) {
          _otherInfo(task);
        }
      }
    }
  }

  void _showTitle(TaskInterface task, int index) {
    Linha.linha();
    print("Código: $index");
    print("Titulo: ${task.title}");
    print("Descrição: ${task.description}");
    print("Status: ${task.finished ? "| Finalizado |" : "| Em processo.. |"}");
  }

  void _meetInfo(MeetTaskModel task) {
    print("Atividade de reunião");
    print("Dia: ${task.day}");
  }

  void _leisureInfo(LeisureTaskModel task) {
    print("Atividade de lazer");
    print("Dia: ${task.day}");
    print("Local: ${task.local}");
  }

  void _otherInfo(OtherTaskModel task) {
    print("Outro tipo de atividade");
    print("Dia: ${task.day}");
    print("Local: ${task.local}");
  }
}
