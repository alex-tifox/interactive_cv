import 'package:freezed_annotation/freezed_annotation.dart';

part 'career_model.freezed.dart';

@freezed
class CareerModel with _$CareerModel {
  const factory CareerModel({
    required String company,
    required String description,
  }) = _CareerModel;
}
