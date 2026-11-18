void main() {
    Movie casino = Movie("Casino Royale", "Eon Productions", "PG13");
    Movie rMovie = Movie("Heavy Film", "Dark Studio", "R");
    List<Movie> pgMovies = Movie.getPG([casino,rMovie]);


        for (Movie m in pgMovies) {
    print(m);
  }
}









class Movie {
  String title;
  String studio;
  String rating;


  Movie(this.title, this.studio, [this.rating = "PG"]);

  static List<Movie> getPG(List<Movie> movies) {
    List<Movie> result = [];
    for (Movie movie in movies) {
      if (movie.rating.contains("PG")) {
        result.add(movie);
      }
    }
    return result;
  }

  @override
  String toString() {
    return "Movie(title: $title, studio: $studio, rating: $rating)";
  }
}