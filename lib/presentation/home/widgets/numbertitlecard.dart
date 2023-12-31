import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/models/released_in_past_year/released_image_only/released_get_image.dart';
import 'package:netflix/presentation/home/widgets/numbercard.dart';
import 'package:netflix/presentation/widgets/maintitlewidget.dart';

class NumberTitleCard extends StatelessWidget {
  const NumberTitleCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Padding(
        padding: EdgeInsets.all(10.0),
        child: MainTitlewidget(title: 'Top 10 Tv Shows in India Today'),
      ),
      kheigth,
      LimitedBox(
        maxHeight: 200,
        child: FutureBuilder(
          future: topTen(),
          builder: (context, snapshot) {
             return  ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
                10,
                (index) => NumberCard(
                  image: 'https://image.tmdb.org/t/p/w200${snapshot.data?[index].posterPath}',
                      index: index,
                    )),
          );
          },
        
        ),
      )
    ]);
  }
}
