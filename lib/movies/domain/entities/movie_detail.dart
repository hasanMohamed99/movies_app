import 'package:equatable/equatable.dart';

class MovieDetail extends Equatable {
  final int id;
  final String title;
  final String backdropPath;
  final String overview;
  final String releaseDate;
  final List<Genres> genres;
  final num runtime;
  final num voteAverage;

  const MovieDetail({
    required this.id,
    required this.title,
    required this.backdropPath,
    required this.overview,
    required this.releaseDate,
    required this.genres,
    required this.runtime,
    required this.voteAverage,
  });

  @override
  List<Object> get props =>
      [
        id,
        title,
        backdropPath,
        overview,
        releaseDate,
        genres,
        runtime,
        voteAverage,
      ];
}

class Genres extends Equatable {
  final String name;
  final int id;

  const Genres({
    required this.name,
    required this.id,
  });

  @override
  List<Object> get props => [name, id];
}
