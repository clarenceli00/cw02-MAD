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
            Image.asset(movie.posterPath, height: 220, width: double.infinity, fit: BoxFit.cover),
            // Title, cast, synopsis…
          ],
        ),
      ),
    );
  }
}