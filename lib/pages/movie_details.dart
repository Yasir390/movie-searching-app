import 'package:flutter/material.dart';
import 'package:movie_app_paulo/widgets/movie_card.dart';

import '../models/movie.dart';

class MovieDetails extends StatelessWidget {
  const MovieDetails({Key? key, required this.movie}) : super(key: key);
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
      ),
      body: Column(
        children: [
          MovieCard(movie: movie,isDetails: true),
         const SizedBox(height: 15,),
          const Text('Movie Posters',style: TextStyle(fontSize: 18),),
          SizedBox(
            width: double.infinity,
            height: 300,
            child: ListView.builder(
                itemCount: movie.images.length,
                itemBuilder: (context, index) {
                 return Card(
                    elevation: 4,
                    child: Image.network(movie.images[index],
                    fit: BoxFit.cover,
                    ),
                  );
                },
              scrollDirection: Axis.horizontal,
            ),
          ),

        ],
      ),
    );
  }
}
