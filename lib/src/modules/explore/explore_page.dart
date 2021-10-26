import 'package:crifra_club_app_redesign/src/shared/data/data.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:crifra_club_app_redesign/src/modules/home/home_controller.dart';
import 'package:crifra_club_app_redesign/src/shared/widgets/widgets.dart';
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
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          CustomSliverAppBar(
            title: "Cifra Club",
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(vertical: 24),
            sliver: SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: size.width,
                        height: 162,
                        child: CarouselSlider(
                          options: CarouselOptions(
                            initialPage: 2,
                            enlargeCenterPage: true,
                            disableCenter: true,
                            scrollPhysics: BouncingScrollPhysics(),
                            enableInfiniteScroll: false,
                          ),
                          items: imgList
                              .map(
                                (item) => ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15.0)),
                                  child: Column(
                                    children: <Widget>[
                                      Image.network(item, fit: BoxFit.fitWidth),
                                    ],
                                  ),
                                ),
                              )
                              .toList(),
                        ),
                      ),
                    ],
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
                  padding: const EdgeInsets.only(left: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Top trending Singer",
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      SizedBox(height: 10),
                      SingerList(
                        singers: singers,
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ],
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
        ],
      ),
    );
  }
}
