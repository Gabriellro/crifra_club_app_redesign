import 'package:crifra_club_app_redesign/src/shared/models/singer_model.dart';

class SongModel {
  final String name;
  final SingerModel author;
  SingerModel? feat;
  bool? isExplicit;

  SongModel({
    required this.name,
    this.isExplicit,
    this.feat,
    required this.author,
  });
}
