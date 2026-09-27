//Accept a Movie object as a constructor parameter and display all its fields.
// Use a SingleChildScrollView so content doesn't overflow on small screens.

import 'package:flutter/material.dart';
import '../models/movie.dart';
class DetailsScreen extends StatelessWidget {
  final Movie movie;
  const DetailsScreen({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(movie.title)),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Hero poster
            Image.asset(movie.posterPath, height: 220, width: double.infinity, fit: BoxFit.contain),
            // Title, cast, synopsis…
            Text(
              movie.title,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const Text(
              'Cast',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Wrap(
              spacing: 4,
              runSpacing: 0,
              children: movie.cast.map((actor) {
                return Chip(label: Text(actor));
              }).toList(),
            ),
            const SizedBox(height: 20),
            const Text(
              'Synopsis',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              movie.synopsis,
              style: const TextStyle(
                fontSize: 16,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}