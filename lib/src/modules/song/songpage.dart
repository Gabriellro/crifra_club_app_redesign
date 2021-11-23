import 'package:crifra_club_app_redesign/src/shared/theme/app_colors.dart';
import 'package:flutter/material.dart';

import 'package:crifra_club_app_redesign/src/shared/theme/theme.dart';

class SongPage extends StatelessWidget {
  const SongPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int currentPage = 5;
    return Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: <Widget>[
          SliverAppBar(
            leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(
                Icons.arrow_back_ios_rounded,
                color: AppColors.primary,
              ),
            ),
            actions: [
              IconButton(
                icon: Icon(
                  Icons.filter_list_rounded,
                  color: Theme.of(context).iconTheme.color!.withOpacity(0.2),
                ),
                tooltip: 'Filter',
                onPressed: () => print("Filter"),
              ),
              IconButton(
                icon: Icon(
                  Icons.more_vert_rounded,
                  color: Theme.of(context).iconTheme.color,
                ),
                tooltip: 'Configurações',
                onPressed: () => print("Configurações"),
              ),
            ],
            pinned: true,
            floating: true,
            backgroundColor: Theme.of(context).backgroundColor,
            elevation: 0,
            collapsedHeight: 80,
            title: Text(
              "Wake Me Up",
              style: Theme.of(context).textTheme.headline6,
            ),
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "Avicci",
                style: Theme.of(context)
                    .textTheme
                    .bodyText2
                    ?.copyWith(color: AppColors.primary),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [],
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: Theme.of(context).cardColor,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "[Intro] Am  F/C  C/G  G\n            Am  F/C  C/G  Em7",
                    ),
                    Text(
                      "[Intro] Am  F/C  C/G  G\n            Am  F/C  C/G  Em7",
                    ),
                    Text(
                      "[Intro] Am  F/C  C/G  G\n            Am  F/C  C/G  Em7",
                    ),
                    Text(
                      "[Intro] Am  F/C  C/G  G\n            Am  F/C  C/G  Em7",
                    ),
                    Text(
                      "[Intro] Am  F/C  C/G  G\n            Am  F/C  C/G  Em7",
                    ),
                    Text(
                      "[Intro] Am  F/C  C/G  G\n            Am  F/C  C/G  Em7",
                    ),
                    Text(
                      "[Intro] Am  F/C  C/G  G\n            Am  F/C  C/G  Em7",
                    ),
                    Text(
                      "[Intro] Am  F/C  C/G  G\n            Am  F/C  C/G  Em7",
                    ),
                    Text(
                      "[Intro] Am  F/C  C/G  G\n            Am  F/C  C/G  Em7",
                    ),
                    Text(
                      "[Intro] Am  F/C  C/G  G\n            Am  F/C  C/G  Em7",
                    ),
                    Text(
                      "[Intro] Am  F/C  C/G  G\n            Am  F/C  C/G  Em7",
                    ),
                    Text(
                      "[Intro] Am  F/C  C/G  G\n            Am  F/C  C/G  Em7",
                    ),
                    Text(
                      "[Intro] Am  F/C  C/G  G\n            Am  F/C  C/G  Em7",
                    ),
                    Text(
                      "[Intro] Am  F/C  C/G  G\n            Am  F/C  C/G  Em7",
                    ),
                    Text(
                      "[Intro] Am  F/C  C/G  G\n            Am  F/C  C/G  Em7",
                    ),
                    Text(
                      "[Intro] Am  F/C  C/G  G\n            Am  F/C  C/G  Em7",
                    ),
                    Text(
                      "[Intro] Am  F/C  C/G  G\n            Am  F/C  C/G  Em7",
                    ),
                    Text(
                      "[Intro] Am  F/C  C/G  G\n            Am  F/C  C/G  Em7",
                    ),
                    Text(
                      "[Intro] Am  F/C  C/G  G\n            Am  F/C  C/G  Em7",
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: Theme.of(context).backgroundColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.headset_rounded,
                color: currentPage == 0
                    ? AppColors.primary
                    : Theme.of(context).iconTheme.color?.withOpacity(0.2),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.text_fields_rounded,
                color: currentPage == 1
                    ? AppColors.primary
                    : Theme.of(context).iconTheme.color?.withOpacity(0.2),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.format_list_bulleted_rounded,
                color: currentPage == 2
                    ? AppColors.primary
                    : Theme.of(context).iconTheme.color?.withOpacity(0.2),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.unfold_more_rounded,
                color: currentPage == 4
                    ? AppColors.primary
                    : Theme.of(context).iconTheme.color?.withOpacity(0.2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
