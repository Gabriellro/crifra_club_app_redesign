import 'package:crifra_club_app_redesign/src/shared/data/data.dart';
import 'package:crifra_club_app_redesign/src/shared/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:crifra_club_app_redesign/src/modules/home/home_controller.dart';
import 'package:crifra_club_app_redesign/src/shared/widgets/_export_widgets.dart';
import 'package:crifra_club_app_redesign/src/shared/theme/theme.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  final controller = HomeController();
  final List<String> imgList = [
    'https://i3.ytimg.com/vi/CKBSVGvKZrU/mqdefault.jpg',
    'https://i3.ytimg.com/vi/4fI401pOqUI/mqdefault.jpg',
    'https://i3.ytimg.com/vi/MTGW6KhYC1Q/mqdefault.jpg',
    'https://i3.ytimg.com/vi/3cSvyIGrZaM/mqdefault.jpg',
    'https://i3.ytimg.com/vi/73w6dKEB3Ac/mqdefault.jpg',
    'https://i3.ytimg.com/vi/BKQomUeKTEY/mqdefault.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          CustomSliverAppBar(
            title: "Cifra Club",
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            sliver: SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CarouselSlider(
                    options: CarouselOptions(
                      initialPage: 2,
                      enlargeCenterPage: true,
                      disableCenter: true,
                      scrollPhysics: BouncingScrollPhysics(),
                      enableInfiniteScroll: false,
                      height: 162,
                    ),
                    items: imgList
                        .map(
                          (item) => ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Image.network(
                              item,
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Top trending Singer',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      Icon(
                        Icons.keyboard_arrow_right_rounded,
                        color: AppColors.primary,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 15),
                SingerList(
                  singers: singers,
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(24),
                  bottomRight: Radius.circular(24),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Álbuns',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        Icon(
                          Icons.keyboard_arrow_right_rounded,
                          color: AppColors.primary,
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  AlbumList(
                    albumModels: albumModels,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
