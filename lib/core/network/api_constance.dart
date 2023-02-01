class ApiConstance {
  static const String _baseUrl = 'https://api.themoviedb.org/3';
  static const String _apiKey = '1ff9fea7aeb36a0fa61349bb59494ad2';
  static const String nowPlayingMoviesPath =
      '$_baseUrl/movie/now_playing?api_key=$_apiKey';
  static const String popularMoviesPath =
      '$_baseUrl/movie/popular?api_key=$_apiKey';
  static const String topRatedMoviesPath =
      '$_baseUrl/movie/top_rated?api_key=$_apiKey';

  static String movieDetailsPath(int movieId) =>
      '$_baseUrl/movie/$movieId?api_key=$_apiKey';

  static String recommendationPath(int movieId) =>
      '$_baseUrl/movie/$movieId/recommendations?api_key=$_apiKey';

  static const String baseImageUrl = 'https://image.tmdb.org/t/p/w500';

  static String imageUrl(String path) => '$baseImageUrl$path';
}
