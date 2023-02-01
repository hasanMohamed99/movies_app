import 'package:movie_app/movies/domain/entities/movie_detail.dart';

class MovieDetailsModel extends MovieDetail {
  const MovieDetailsModel({
    required super.id,
    required super.title,
    required super.backdropPath,
    required super.overview,
    required super.releaseDate,
    required super.genres,
    required super.runtime,
    required super.voteAverage,
  });

  factory MovieDetailsModel.fromJson(Map<String, dynamic> json) {
    return MovieDetailsModel(
      id: json['id'],
      title: json['title'],
      backdropPath: json['backdrop_path'],
      overview: json['overview'],
      releaseDate: json['release_date'],
      genres: List<GenresModel>.from(
          json['genres'].map((x) => GenresModel.fromJson(x))),
      runtime: json['runtime'],
      voteAverage: json['vote_average'],
    );
  }
}

class GenresModel extends Genres {
  const GenresModel({
    required super.name,
    required super.id,
  });

  factory GenresModel.fromJson(Map<String, dynamic> json) {
    return GenresModel(
      name: json['name'],
      id: json['id'],
    );
  }
}
