import 'package:flutter/material.dart';
import 'package:netflix/models/released_in_past_year/released_image_only/released_get_image.dart';
import 'package:netflix/presentation/widgets/maincardwidget.dart';
import '../../core/constants.dart';
import 'maintitlewidget.dart';

class MainTitleCard extends StatelessWidget {
  final String title;
  const MainTitleCard({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: MainTitlewidget(title: title),
      ),
      kheigth,
      LimitedBox(
        maxHeight: 200,
        child: FutureBuilder(
          future: getPastRelease(),
          builder: (context, chekavar) {
            return chekavar.hasData ? ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(chekavar.data!.length, (index) {
                return MainCardWidget(
                        imgString:
                            'https://image.tmdb.org/t/p/w200${chekavar.data?[index].posterPath}',
                      );
                    
              }),
            ): Center(child: CircularProgressIndicator());
          },
        ),
      )
    ]);
  }
}



class Trending extends StatelessWidget {
  final String title;
  const Trending({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: MainTitlewidget(title: title),
      ),
      kheigth,
      LimitedBox(
        maxHeight: 200,
        child: FutureBuilder(
          future: getTrending(),
          builder: (context, snapshot) {
            return ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(10, (index) {
                return snapshot.hasData
                    ? MainCardWidget(
                        imgString:
                            'https://image.tmdb.org/t/p/w200${snapshot.data?[index].posterPath}',
                      )
                    : Center(child: CircularProgressIndicator());
              }),
            );
          },
        ),
      )
    ]);
  }
}


class TenseDrama extends StatelessWidget {
  final String title;
  const TenseDrama({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: MainTitlewidget(title: title),
      ),
      kheigth,
      LimitedBox(
        maxHeight: 200,
        child: FutureBuilder(
          future: getTenseDrama(),
          builder: (context, snapshot) {
            return snapshot.hasData ? ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(10, (index) {
                return 
                     MainCardWidget(
                        imgString:
                            'https://image.tmdb.org/t/p/w200${snapshot.data?[index].posterPath}',
                      );
                  
              }),
            ):Center(child: CircularProgressIndicator());
          },
        ),
      )
    ]);
  }
}

class TvSeries extends StatelessWidget {
  final String title;
  const TvSeries({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: MainTitlewidget(title: title),
      ),
      kheigth,
      LimitedBox(
        maxHeight: 200,
        child: FutureBuilder(
          future: getTvSeries(),
          builder: (context, snapshot) {
            return snapshot.hasData ? ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(10, (index) {
                return 
                     MainCardWidget(
                        imgString:
                            'https://image.tmdb.org/t/p/w200${snapshot.data?[index].posterPath}',
                      );
                
              }),
            ): Center(child: CircularProgressIndicator());
          },
        ),
      )
    ]);
  }
}

