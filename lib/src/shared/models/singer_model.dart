import 'package:crifra_club_app_redesign/src/shared/models/info_model.dart';

class SingerModel {
  final String name;
  final String imageUrl;
  final InfoModel info;

  const SingerModel({
    required this.name,
    required this.imageUrl,
    required this.info,
  });
}
