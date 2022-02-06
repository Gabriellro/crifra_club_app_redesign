import 'package:crifra_club_app_redesign/src/shared/models/singer_model.dart';

class SongModel {
  final String name;
  final SingerModel author;
  final SingerModel feat;
  final bool? isExplicit;

  SongModel({
    required this.name,
    required this.author,
    required this.feat,
    this.isExplicit,
  });
}
