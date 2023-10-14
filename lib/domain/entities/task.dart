import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

part 'task.freezed.dart';
part 'task.g.dart';

@freezed
@Collection(ignore: {'copyWith'})
class Task with _$Task {
  const Task._();
  const factory Task({
    required String title,
    required String description,
    required bool isCompleted,
    required DateTime dateCreated,
    DateTime? dateDue,
  }) = _Task;

  Id get id => Isar.autoIncrement;

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
}
