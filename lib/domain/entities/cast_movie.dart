// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class CastMovie extends Equatable {
  final String? profilePath;
  final String? name;
  const CastMovie({
    this.profilePath,
    this.name,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        profilePath,
        name,
      ];
}
