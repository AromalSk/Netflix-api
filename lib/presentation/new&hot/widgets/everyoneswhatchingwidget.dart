import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/widgets/buttonWidget.dart';
import 'package:netflix/presentation/widgets/videowidget.dart';

class EveryOnesWhatchingwidget extends StatelessWidget {
     String imageComing;
   String title;
   String overview;
   EveryOnesWhatchingwidget({
    super.key,required this.imageComing,required this.overview,required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          kheigth,
           Text(
            title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          kheigth,
           Text(
            overview,
            style: TextStyle(color: kgreycolor),
          ),
          kheight50,
           VideoCardWidget(image: imageComing),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              MainscreenButtonWidget(
                icon: Icons.share,
                title: 'share',
                textsize: 16,
                iconsize: 22,
              ),
              kwidth,
              MainscreenButtonWidget(
                icon: Icons.add,
                title: 'My List',
                textsize: 16,
                iconsize: 25,
              ),
              kwidth,
              MainscreenButtonWidget(
                icon: Icons.play_arrow,
                title: 'Play',
                textsize: 16,
                iconsize: 25,
              ),
              kwidth,
            ],
          )
        ],
      ),
    );
  }
}
