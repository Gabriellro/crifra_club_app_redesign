import 'package:crifra_club_app_redesign/src/shared/models/models.dart';
import 'package:crifra_club_app_redesign/src/shared/models/singer_model.dart';

class AlbumModel {
  final String name;
  final String albumimageUrl;
  final SingerModel author;
  final String ontap;
  final List<SongModel>? songModel;

  const AlbumModel({
    required this.ontap,
    required this.name,
    required this.author,
    required this.albumimageUrl,
    this.songModel,
  });
}
