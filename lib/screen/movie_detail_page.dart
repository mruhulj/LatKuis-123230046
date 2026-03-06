import 'package:flutter/material.dart';
import '../models/movie_model.dart';
import 'package:url_launcher/url_launcher.dart';

class MovieDetailPage extends StatelessWidget {
  final Movie movie;

  const MovieDetailPage({super.key, required this.movie});

  // Fungsi untuk membuka link Wikipedia
  Future<void> _launchWiki() async {
    final Uri url = Uri.parse(movie.wikiUrl);
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.network(
                movie.posterUrl,
                height: 300,
                errorBuilder: (context, error, stackTrace) => const Icon(Icons.broken_image, size: 100),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              movie.title,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text('Tahun Rilis: ${movie.year}', style: const TextStyle(fontSize: 16)),
            Text('Genre: ${movie.genre}', style: const TextStyle(fontSize: 16)),
            Text('Rating: ${movie.rating}', style: const TextStyle(fontSize: 16)),
            const Divider(),
            Text('Sutradara: ${movie.director}', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
            Text('Pemeran: ${movie.cast}', style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 16),
            const Text('Sinopsis:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text(
              movie.synopsis,
              style: const TextStyle(fontSize: 14, height: 1.5),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 24),
            Center(
              child: ElevatedButton.icon(
                onPressed: _launchWiki,
                icon: const Icon(Icons.open_in_browser),
                label: const Text('Buka di Wikipedia'),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}