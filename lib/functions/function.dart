import 'dart:convert';

import 'package:http/http.dart' as http;

const String apiKey = '962e2bc6b6c1ed43097036badbed8dbf';
final String readAccesstoken =
    'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI5NjJlMmJjNmI2YzFlZDQzMDk3MDM2YmFkYmVkOGRiZiIsInN1YiI6IjY0YTgzODVjZjA1NmQ1MDBmZjZlMjQ5NCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.CvAaEiy_L5RQD4OQedUzTd9ndgxB-DmCCjVGI1KSMVE';
List trendingMovies = [];

// 'https://api.themoviedb.org/3/trending/all/day?api_key=962e2bc6b6c1ed43097036badbed8dbf'

//  'https://api.themoviedb.org/3/movie/top_rated?api_key=962e2bc6b6c1ed43097036badbed8dbf'
