import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/models/released_in_past_year/released_image_only/released_get_image.dart';
import 'package:netflix/presentation/search/widgets/searchtitle.dart';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTitle(title: 'Top Searches'),
        kheigth,
        Expanded(
          child: FutureBuilder(
            future: getComingSoon(),
            builder: (context, snapshot) {
              return  snapshot.hasData ?    ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) => TopSearchItemTile(index: index,
                image:'https://image.tmdb.org/t/p/w200${snapshot.data?[index].backdropPath}' ,
                name: snapshot.data?[index].title,
                ),
                separatorBuilder: (context, index) => kheigth20,
                itemCount: 10):
                 Center(child: CircularProgressIndicator());
            },
         
          ),
        ),
      ],
    );
  }
}

class TopSearchItemTile extends StatelessWidget {
   TopSearchItemTile({super.key, required this.index,required this.image,required this.name});
  final int index;
  String image;
  String name;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
          width: size.width * 0.4,
          height: 70,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(image), fit: BoxFit.cover)),
        ),
        kwidth,
         Expanded(
            child: Text(
          name,
          style: TextStyle(
              color: kwhite, fontSize: 16, fontWeight: FontWeight.bold),
        )),
        const CircleAvatar(
            backgroundColor: kwhite,
            radius: 25,
            child: Icon(
              Icons.play_circle_fill,
              color: kblackcolor,
              size: 50,
            ))
      ],
    );
  }
}
