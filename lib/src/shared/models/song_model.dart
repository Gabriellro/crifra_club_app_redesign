class SongModel {
  final String name;
  final bool? isfeat;
  final String? feat;
  final String author;

  const SongModel({
    required this.name,
    this.isfeat = false,
    this.feat = "",
    required this.author,
  });
}
