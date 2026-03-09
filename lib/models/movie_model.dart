class Movie {
  final String title;
  final String year;
  final String genre;
  final String rating;
  final String posterUrl;
  final String director;
  final String cast;
  final String synopsis;
  final String wikiUrl;
  bool isAdded; // Untuk melacak status tombol tambah ke daftar

  Movie({
    required this.title,
    required this.year,
    required this.genre,
    required this.rating,
    required this.posterUrl,
    required this.director,
    required this.cast,
    required this.synopsis,
    required this.wikiUrl,
    this.isAdded = false, // Status default belum ditambahkan
  });
}

// Dummy data untuk mengisi ListView
List<Movie> dummyMovies = [
  Movie(
    title: "Inception",
    year: "2010",
    genre: "Sci-Fi, Action",
    rating: "8.8/10",
    posterUrl: "https://upload.wikimedia.org/wikipedia/en/2/2e/Inception_%282010%29_theatrical_poster.jpg",
    director: "Christopher Nolan",
    cast: "Leonardo DiCaprio, Joseph Gordon-Levitt, Elliot Page",
    synopsis: "A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O., but his tragic past may doom the project and his team to disaster.",
    wikiUrl: "https://en.wikipedia.org/wiki/Inception",
  ),
  Movie(
    title: "Interstellar",
    year: "2014",
    genre: "Sci-Fi, Adventure",
    rating: "8.6/10",
    posterUrl: "https://upload.wikimedia.org/wikipedia/en/b/bc/Interstellar_film_poster.jpg",
    director: "Christopher Nolan",
    cast: "Matthew McConaughey, Anne Hathaway, Jessica Chastain",
    synopsis: "When Earth becomes uninhabitable in the future, a farmer and ex-NASA pilot, Joseph Cooper, is tasked to pilot a spacecraft, along with a team of researchers, to find a new planet for humans.",
    wikiUrl: "https://en.wikipedia.org/wiki/Interstellar_(film)",
  ),
  Movie(
    title: "F1 The Movie",
    year: "2025",
    genre: "Racing Car",
    rating: "9/10",
    posterUrl: "https://upload.wikimedia.org/wikipedia/en/3/38/F1_%282025_film%29.png",
    director: "Ruhul",
    cast: "Brad Pitt, Ruhul",
    synopsis: "F1 (marketed as F1 the Movie) is a 2025 American sports drama film starring Brad Pitt as Formula One (F1) racing driver Sonny Hayes, who returns after a 30-year absence to save his former teammate's underdog team, APXGP, from collapse. The film was directed by Joseph Kosinski from a screenplay by Ehren Kruger. Damson Idris, Kerry Condon, Tobias Menzies, and Javier Bardem also star in supporting roles.",
    wikiUrl: "https://en.wikipedia.org/wiki/F1_(film)",
  ),
];