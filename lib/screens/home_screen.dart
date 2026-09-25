//Use a ListView.builder for an efficient, scrollable list. 
//Each ListTile or Card navigates to DetailsScreen when tapped:
//Design Challenge: Replace the plain ListTile with a custom Card
// that has a hero poster at the top 
import 'package:flutter/material.dart';
import '../data/movies_data.dart';
import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      ListView.builder(
        itemCount: sampleMovies.length,
        itemBuilder: (context, index) {
          final movie = sampleMovies[index];
          return Card(
            child: ListTile(
              leading: Image.asset(
                movie.posterPath,
                width: 56,
                fit: BoxFit.cover,
              ),
              title: Text(movie.title),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => DetailsScreen(movie: movie),
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