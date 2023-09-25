// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:equatable/equatable.dart';

class CastTv extends Equatable {
  String? profilePath;
  String? name;
  CastTv({
    this.profilePath,
    this.name,
  });

  @override
  List<Object?> get props => [profilePath, name];
}
