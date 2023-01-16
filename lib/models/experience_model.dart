import 'package:freezed_annotation/freezed_annotation.dart';

part 'experience_model.freezed.dart';

@freezed
class ExperienceModel with _$ExperienceModel {
  const factory ExperienceModel.careerModel({
    required String company,
    required String position,
    // TODO: temporary solution, improves model's date handling
    required String time,
    required String description,
  }) = CareerModel;

  const factory ExperienceModel.educationModel({
    required String institution,
    required String position,
    // TODO: temporary solution, improves model's date handling
    required String time,
    required String description,
  }) = EducationModel;
}
