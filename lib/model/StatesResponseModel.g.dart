// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'StatesResponseModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StatesResponse _$StatesResponseFromJson(Map<String, dynamic> json) {
  return new StatesResponse(
      json['success'] as bool,
      (json['states'] as List)
          ?.map((e) => e == null
              ? null
              : new StatesList.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

abstract class _$StatesResponseSerializerMixin {
  bool get success;
  List<StatesList> get statesList;
  Map<String, dynamic> toJson() =>
      <String, dynamic>{'success': success, 'states': statesList};
}
