import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movie_app/core/error/failure.dart';
import 'package:movie_app/core/usecase/base_usecase.dart';
import 'package:movie_app/movies/domain/entities/recommendation.dart';
import 'package:movie_app/movies/domain/repository/base_movies_repository.dart';

class GetRecommendationUsecase
    extends BaseUseCase<List<Recommendation>, RecommendationParameter> {
  final BaseMoviesRepository baseMoviesRepository;

  GetRecommendationUsecase(this.baseMoviesRepository);
  @override
  Future<Either<Failure, List<Recommendation>>> call(
      RecommendationParameter parameters) async {
    return await baseMoviesRepository.getRecommendation(parameters);
  }
}

class RecommendationParameter extends Equatable {
  final int id;

  const RecommendationParameter(this.id);

  @override
  List<Object> get props => [id];
}
