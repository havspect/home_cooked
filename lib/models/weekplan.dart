import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:home_cooked/models/user.dart';

part 'weekplan.freezed.dart';
part 'weekplan.g.dart';

@freezed
class Weekplan with _$Weekplan {
  @JsonSerializable(explicitToJson: true)
  factory Weekplan({
    required String id,
    required String title,
    WeekplanExpanded? expand,
  }) = _Weekplan;

  factory Weekplan.fromJson(Map<String, dynamic> json) =>
      _$WeekplanFromJson(json);
}

@freezed
class WeekplanExpanded with _$WeekplanExpanded {
  @JsonSerializable(explicitToJson: true)
  factory WeekplanExpanded({
    User? owner,
    List<User>? users,
  }) = _WeekplanExpanded;

  factory WeekplanExpanded.fromJson(Map<String, dynamic> json) =>
      _$WeekplanExpandedFromJson(json);
}

@freezed
class NewWeekplan with _$NewWeekplan {
  factory NewWeekplan(
      {required String title,
      String? description,
      required String owner}) = _NewWeekplan;

  factory NewWeekplan.fromJson(Map<String, dynamic> json) =>
      _$NewWeekplanFromJson(json);
}
