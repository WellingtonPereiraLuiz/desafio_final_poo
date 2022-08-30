import 'package:desafio_final_poo/interface/task_interface.dart';
import 'package:desafio_final_poo/model/leisure_model.dart';
import 'package:desafio_final_poo/model/meet_model.dart';

List<TaskInterface> allTask = [
  MeetTaskModel(
      day: "22/08/2022",
      description: "app para otakus",
      finished: false,
      title: "App otaku"),
  LeisureTaskModel(
      day: "22/08/2022",
      description: "jogar ate enjoar",
      finished: false,
      title: "jogatina",
      local: "Meu sofa"),
];
