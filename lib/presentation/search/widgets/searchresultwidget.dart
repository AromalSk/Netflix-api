import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/models/released_in_past_year/released_image_only/released_get_image.dart';
import 'package:netflix/presentation/search/searchscreen.dart';
import 'package:netflix/presentation/search/widgets/searchtitle.dart';

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTitle(title: 'Movies & TV'),
        kheigth20,
        Expanded(
          child: FutureBuilder(
            future: getimageSearchGrid(searchControllor.text.trim()),
            builder: (context, snapshot) {
              return  snapshot.hasData ?     GridView.count(
              shrinkWrap: true,
              crossAxisCount: 3,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              childAspectRatio: 1 / 1.4,
              children: List.generate(
                snapshot.data!.length,
                (index) {
                  return 
                  MainCard(index: index,image:'https://image.tmdb.org/t/p/w200${snapshot.data?[index].posterPath}' ,);
                  
                },
              ),
            ): Center(child: CircularProgressIndicator());
            },
          ),
        ),
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  final int index;
  String image;
   MainCard({super.key, required this.index,required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image:  DecorationImage(
              image:
                  NetworkImage(image),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(5)),
    );
  }
}
