import 'package:flutter/material.dart';
import '../models/movie_model.dart';
import 'movie_detail_page.dart';

class MovieListPage extends StatefulWidget {
  const MovieListPage({super.key});

  @override
  State<MovieListPage> createState() => _MovieListPageState();
}

class _MovieListPageState extends State<MovieListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Daftar Film')),
      body: ListView.builder(
        itemCount: dummyMovies.length,
        itemBuilder: (context, index) {
          final movie = dummyMovies[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            child: ListTile(
              leading: Image.network(
                movie.posterUrl,
                width: 50,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => const Icon(Icons.movie),
              ),
              title: Text(movie.title, style: const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('${movie.year} | ${movie.genre}\nRating: ${movie.rating}'),
              isThreeLine: true,
              trailing: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  // Default latar putih, diklik latar biru
                  backgroundColor: movie.isAdded ? Colors.blue : Colors.white,
                  foregroundColor: movie.isAdded ? Colors.white : Colors.black,
                  // Default garis luar abu-abu, diklik biru
                  side: BorderSide(color: movie.isAdded ? Colors.blue : Colors.grey),
                ),
                onPressed: () {
                  setState(() {
                    movie.isAdded = !movie.isAdded;
                  });
                },
                child: Text(movie.isAdded ? 'Ditambahkan' : 'Tambahkan ke Daftar'),
              ),
              onTap: () {
                // Navigasi ke detail film
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MovieDetailPage(movie: movie),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}