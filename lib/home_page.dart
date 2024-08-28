import 'package:flutter/material.dart';
import 'package:movie_app_paulo/models/movie.dart';
import 'package:movie_app_paulo/pages/movie_details.dart';
import 'package:movie_app_paulo/providers/movie_provider.dart';
import 'package:provider/provider.dart';

import 'widgets/movie_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    Provider.of<MovieProvider>(context, listen: false).loadMovies(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final movieData = Provider.of<MovieProvider>(context);

    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        title: const Text('Movies'),
        backgroundColor: Colors.green[200],
      ),
      body: Center(
        child: ListView.builder(
          itemCount: movieData.movieList.length,
          itemBuilder: (context, index) {
            final movie = movieData.movieList[index];
            return MovieCard(movie: movie);
          },
        ),
      ),
    );
  }
}

