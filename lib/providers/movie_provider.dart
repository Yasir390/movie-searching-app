import 'package:flutter/material.dart';
import 'package:movie_app_paulo/models/movie.dart';
import 'package:movie_app_paulo/utils/movie_parser.dart';

class MovieProvider extends ChangeNotifier{

   List<Movie> _movieList =[];

  List<Movie> get movieList => _movieList;

   Future<void> loadMovies(BuildContext context) async {
     try{
       final jsonString = await DefaultAssetBundle.of(context).loadString('assets/data/film.json');
       final movies = MovieParser.parse(jsonString);

       _movieList= movies;
       notifyListeners();
     }catch(e){
       print('Error loading movies : $e');
     }
   }

}