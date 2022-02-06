import 'package:crifra_club_app_redesign/src/shared/models/_export_models.dart';
import 'package:crifra_club_app_redesign/src/shared/models/singer_model.dart';

class AlbumModel {
  final String name;
  final String albumimageUrl;
  final SingerModel author;
  final String ontap;
  final InfoModel infoModel;
  final List<SongModel> songModel;

  const AlbumModel({
    required this.name,
    required this.author,
    required this.albumimageUrl,
    required this.infoModel,
    required this.ontap,
    required this.songModel,
  });
}
