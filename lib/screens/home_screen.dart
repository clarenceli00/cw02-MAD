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
      appBar: AppBar(
        title: const Text('Movie Browser')
        ,),
      body: 
      ListView.builder(
        itemCount: sampleMovies.length,
        itemBuilder: (context, index) {
          final movie = sampleMovies[index];
          return Card(
            clipBehavior: Clip.antiAlias,
            child: InkWell( //inkwell to make card interactable
              onTap: () {
                Navigator.push( //ontap push to details page
                  context,
                  MaterialPageRoute(
                    builder: (_) => DetailsScreen(movie: movie),
                  ),
                );
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Large poster at the top
                  Image.asset(
                    movie.posterPath,
                    height: 220,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),

                  // Movie title below the poster
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      movie.title,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}