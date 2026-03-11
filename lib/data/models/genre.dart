import 'package:freezed_annotation/freezed_annotation.dart';

part 'genre.g.dart';

@JsonSerializable()
class Genre {
  int? id;
  String? name;

  Genre({this.id, this.name});

  static Genre selectGenre(List<int> listIds, List<Genre> listGenre) {
    if (listIds.isEmpty) {
      return Genre(id: 0, name: "none");
    }
    final Genre selectedGenre = listGenre
        .where((genre) => genre.id == listIds[0])
        .first;
    return selectedGenre;
  }

  factory Genre.fromJson(Map<String, dynamic> json) => _$GenreFromJson(json);

  Map<String, dynamic> toJson() => _$GenreToJson(this);
}
