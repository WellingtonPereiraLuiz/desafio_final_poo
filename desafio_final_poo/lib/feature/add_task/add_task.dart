import 'package:desafio_final_poo/feature/home/painel.dart';
import 'package:desafio_final_poo/interface/page_interface.dart';
import 'package:desafio_final_poo/model/leisure_model.dart';
import 'package:desafio_final_poo/model/meet_model.dart';
import 'package:desafio_final_poo/model/other_model.dart';
import 'package:desafio_final_poo/util/clean.dart';
import 'package:desafio_final_poo/util/linha.dart';
import 'package:desafio_final_poo/util/read.dart';
import 'package:desafio_final_poo/util/task.dart';

late String retornoHome;

class AddTask implements Page {
  @override
  void init() {
    do {
      Clean.clean();
      Linha.linha();
      print("Que tipo de tarefa deseja adicionar?");
      Linha.linha();
      print("1) Tarefa de trabalho.");
      print("2) Tarefa de lazer.");
      print("3) Outro tipo de tarefa.");
      print("0) Voltar para o menu inicial.");
      Linha.linha();
      final choice = Read.readInt(message: "Escolha uma das opções acima.");
      Linha.linha();
      if (choice == 1) {
        final name = Read.readString(message: "Crie um nome para a tarefa:");
        final description = Read.readString(message: "Descreva a tarefa:");

        final meetModel = MeetTaskModel(
            day: "27/08/2022",
            description: description,
            finished: false,
            title: name);
        allTask.add(meetModel);

        Linha.linha();
        retornoHome =
            Read.readString(message: "Deseja criar outra tarefa? s/n");
      } else if (choice == 2) {
        final name = Read.readString(message: "Crie um nome para a tarefa:");
        final description = Read.readString(message: "Descreva a tarefa:");
        final location =
            Read.readString(message: "Descreva a localizacao da tarefa:");

        final leisureModel = LeisureTaskModel(
          day: "27/08/2022",
          description: description,
          finished: false,
          title: name,
          local: location,
        );
        allTask.add(leisureModel);

        Linha.linha();
        retornoHome =
            Read.readString(message: "Deseja criar outra tarefa? s/n");
      } else if (choice == 3) {
        final name = Read.readString(message: "Crie um nome para a tarefa:");
        final description = Read.readString(message: "Descreva a tarefa:");
        final location =
            Read.readString(message: "Descreva a localizacao da tarefa:");

        final otherModel = OtherTaskModel(
            day: "27/08/2022",
            description: description,
            finished: false,
            title: name,
            local: location);
        allTask.add(otherModel);

        Linha.linha();
        retornoHome =
            Read.readString(message: "Deseja criar outra tarefa? s/n");
      } else if (choice == 0) {
        retornoHome = "n";
      }
    } while (retornoHome == "s");
    Clean.clean();
    painel().init();
  }
}
