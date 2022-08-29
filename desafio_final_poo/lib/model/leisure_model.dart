import 'package:desafio_final_poo/interface/page_interface.dart';
import 'package:desafio_final_poo/interface/task_interface.dart';

class LeisureTaskModel implements TaskInterface {
  LeisureTaskModel({
    required this.day,
    required this.description,
    required this.finished,
    required this.title,
    required this.local,
  });

  String local;

  @override
  String day;

  @override
  String description;

  @override
  bool finished;

  @override
  String title;

  @override
  void finish() {
    finished = true;
  }
}
