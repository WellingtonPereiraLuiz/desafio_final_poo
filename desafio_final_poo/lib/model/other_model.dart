import 'package:desafio_final_poo/interface/task_interface.dart';

class OtherTaskModel implements TaskInterface {
  OtherTaskModel({
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
