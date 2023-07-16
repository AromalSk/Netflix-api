import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/widgets/buttonWidget.dart';
import 'package:netflix/presentation/widgets/videowidget.dart';
import '../../../core/colors/colors.dart';



class ComingSoonWidget extends StatelessWidget {
   String imageComing;
   String title;
   String overview;
   String date;
  ComingSoonWidget({   
    super.key,
    required this.overview,
     required this.imageComing,
     required this.title,
     required this.date
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 500,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children:  [
                Text(
                  'FEB',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: kgreycolor),
                ),
                Text(
                  '11',
                  style: TextStyle(
                      fontSize: 30,
                      letterSpacing: 5,
                      fontWeight: FontWeight.bold),
                )
              ]),
        ),
        SizedBox(
          height: 550,
          width: size.width - 50,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               VideoCardWidget(
                  image: imageComing
                    ),
              kheigth,
              Row(
                children: [
                  SizedBox(
                    width: 200,
                    child: Text(
                      title,
                      style: GoogleFonts.itim(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          letterSpacing: -2),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: const [
                      MainscreenButtonWidget(
                        icon: Icons.add_alert_rounded,
                        title: 'Remind me',
                        textsize: 10,
                        iconsize: 20,
                      ),
                      kwidth,
                      MainscreenButtonWidget(
                        icon: Icons.info,
                        title: 'Info',
                        textsize: 10,
                        iconsize: 20,
                      ),
                      kwidth
                    ],
                  )
                ],
              ),
              kheigth,
               Text('Coming on $date'),
              kheigth,
              Text(
                title,
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              kheigth,
               Text(
                overview,
                style: TextStyle(color: kgreycolor),overflow: TextOverflow.ellipsis,maxLines: 8,
                           )
            ],
          ),
        ),
      ],
    );
  }
}
