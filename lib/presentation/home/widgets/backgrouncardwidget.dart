import 'package:flutter/material.dart';
import 'package:netflix/models/released_in_past_year/released_image_only/released_get_image.dart';
import 'package:netflix/presentation/home/widgets/playbuttonwidget.dart';
import 'package:netflix/presentation/home/widgets/buttonwidget.dart';

class BackGroundCardWidget extends StatelessWidget {

  BackGroundCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FutureBuilder(
          future: mainImage(),
          builder: (context, snapshot) {
            return    Container(
            height: 600,
            width: double.infinity,
            decoration:  BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage('https://image.tmdb.org/t/p/w200${snapshot.data?[5].posterPath}'),
                    fit: BoxFit.contain)),
          );
          },
       
        ),
        Positioned(
          left: 0,
          bottom: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                MainscreenButtonWidget(
                  icon: Icons.add,
                  title: 'My List',
                  textsize: 17,
                  iconsize: 30,
                ),
                PlayButton(),
                MainscreenButtonWidget(
                  icon: Icons.info,
                  title: 'Info',
                  textsize: 17,
                  iconsize: 30,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
