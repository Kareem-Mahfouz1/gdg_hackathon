import 'package:equatable/equatable.dart';

class Goal extends Equatable {
  final String? goalName;
  final int? targetAmount;
  final int? savedAmount;
  final String? deadline;

  const Goal({
    this.goalName,
    this.targetAmount,
    this.savedAmount,
    this.deadline,
  });

  factory Goal.fromJson(Map<String, dynamic> json) => Goal(
        goalName: json['goalName'] as String?,
        targetAmount: json['targetAmount'] as int?,
        savedAmount: json['savedAmount'] as int?,
        deadline: json['deadline'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'goalName': goalName,
        'targetAmount': targetAmount,
        'savedAmount': savedAmount,
        'deadline': deadline,
      };

  @override
  List<Object?> get props {
    return [
      goalName,
      targetAmount,
      savedAmount,
      deadline,
    ];
  }
}
