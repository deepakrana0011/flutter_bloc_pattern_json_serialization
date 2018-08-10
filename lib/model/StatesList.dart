import 'package:json_annotation/json_annotation.dart';
part 'StatesList.g.dart';

@JsonSerializable()
class StatesList extends Object with _$StatesListSerializerMixin{

  String name;
  StatesList(this.name);

  factory StatesList.fromJson(Map<String, dynamic> json) => _$StatesListFromJson(json);
}