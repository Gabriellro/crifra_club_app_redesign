class InfoModel {
  final String data, data1, data2;
  final String? category, category2, category3;

  const InfoModel({
    required this.data,
    required this.data1,
    required this.data2,
    this.category = "Exibições",
    this.category2 = "Fã-clube",
    this.category3 = "Musicas",
  });

  const InfoModel.user({
    required this.data,
    required this.data1,
    required this.data2,
    this.category = "Coletâneas",
    this.category2 = "Seguidores",
    this.category3 = "Seguindo",
  });
}
