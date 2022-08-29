import 'package:desafio_final_poo/interface/task_interface.dart';

class MeetTaskModel implements TaskInterface {
  MeetTaskModel({
    required this.day,
    required this.description,
    required this.finished,
    required this.title,
  });

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
