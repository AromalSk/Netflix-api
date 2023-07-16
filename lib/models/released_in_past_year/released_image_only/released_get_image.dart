import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:netflix/models/download_model/download_model.dart';
import 'package:netflix/models/download_model/result.dart';


Future<List<dynamic>> getPastRelease() async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/movie/top_rated?api_key=962e2bc6b6c1ed43097036badbed8dbf'
      ));
  if (response.statusCode == 200) {
    final jsondata = jsonDecode(response.body);

    final result = DownloadModel.fromJson(jsondata);
   
    if (result.results != null) {
      return result.results!;
    }
     
  }
   List<Result>empty = [];
    return empty;
   
}


Future<List<dynamic>> getTrending() async {
  final response = await http.get(
    Uri.parse(
        'https://api.themoviedb.org/3/trending/all/week?api_key=962e2bc6b6c1ed43097036badbed8dbf'),
  );

  if (response.statusCode == 200) {
    final jsondata = jsonDecode(response.body);
    final result = DownloadModel.fromJson(jsondata);
    if (result.results != null) {
      return result.results!;
    }
  }

  List<Result> empty = [];
  return empty;
}



Future<List<dynamic>> getTenseDrama() async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/tv/on_the_air?api_key=962e2bc6b6c1ed43097036badbed8dbf'));
  if (response.statusCode == 200) {
    final jsondata = jsonDecode(response.body);

    final result = DownloadModel.fromJson(jsondata);
   
    if (result.results != null) {
      return result.results!;
    }
     
  }
   List<Result>empty = [];
    return empty;
   
}


Future<List<dynamic>> getTvSeries() async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/trending/tv/day?api_key=962e2bc6b6c1ed43097036badbed8dbf'));
  if (response.statusCode == 200) {
    final jsondata = jsonDecode(response.body);

    final result = DownloadModel.fromJson(jsondata);
   
    if (result.results != null) {
      return result.results!;
    }
     
  }
   List<Result>empty = [];
    return empty;
   
}

Future<List<dynamic>> topTen() async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/movie/upcoming?api_key=962e2bc6b6c1ed43097036badbed8dbf'
      
      ));
  if (response.statusCode == 200) {
    final jsondata = jsonDecode(response.body);

    final result = DownloadModel.fromJson(jsondata);
   
    if (result.results != null) {
      return result.results!;
    }
     
  }
   List<Result>empty = [];
    return empty;
   
}

Future<List<dynamic>> mainImage() async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/movie/upcoming?api_key=962e2bc6b6c1ed43097036badbed8dbf'));
  if (response.statusCode == 200) {
    final jsondata = jsonDecode(response.body);

    final result = DownloadModel.fromJson(jsondata);
   
    if (result.results != null) {
      return result.results!;
    }
     
  }
   List<Result>empty = [];
    return empty;
   
}

Future<List<dynamic>> getComingSoon() async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/movie/upcoming?api_key=962e2bc6b6c1ed43097036badbed8dbf'));
  if (response.statusCode == 200) {
    final jsondata = jsonDecode(response.body);

    final result = DownloadModel.fromJson(jsondata);
   
    if (result.results != null) {
      return result.results!;
    }
     
  }
   List<Result>empty = [];
    return empty;
   
}

Future<List<dynamic>> getimageSearchGrid(String search) async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/search/movie?api_key=ceb05cb35d63209923547efcbdf2d9df&query=${search}'));

  if (response.statusCode == 200) {
    final jsondata = jsonDecode(response.body);
    final result = DownloadModel.fromJson(jsondata);
    if (result.results != null) {
      return result.results!;
    }
  }

  List<Result> empty = [];
  return empty;
}


Future<List<dynamic>> getimageSearch() async {
  final response = await http.get(
    Uri.parse(
        'https://api.themoviedb.org/3/trending/all/day?api_key=ceb05cb35d63209923547efcbdf2d9df'),
  );

  if (response.statusCode == 200) {
    final jsondata = jsonDecode(response.body);
    final result = DownloadModel.fromJson(jsondata);
    if (result.results != null) {
      return result.results!;
    }
  }

  List<Result> empty = [];
  return empty;
}