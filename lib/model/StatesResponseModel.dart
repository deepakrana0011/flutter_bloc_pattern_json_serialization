import 'package:json_annotation/json_annotation.dart';
import 'package:bloc_pattern_company/model/StatesList.dart';
part 'StatesResponseModel.g.dart';

@JsonSerializable()
class StatesResponse extends Object with _$StatesResponseSerializerMixin {
  bool success;
  @JsonKey(name: 'states')
  List<StatesList> statesList;

  StatesResponse(this.success,this.statesList);

  factory StatesResponse.fromJson(Map<String,dynamic> json)=> _$StatesResponseFromJson(json);
}
