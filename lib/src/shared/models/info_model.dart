class InfoModel {
  final String data, data1, data2;
  final String? category, category2, category3;

  const InfoModel.user({
    required this.data,
    required this.data1,
    required this.data2,
    this.category = "Coletâneas",
    this.category2 = "Seguidores",
    this.category3 = "Seguindo",
  });
  const InfoModel.singer({
    required this.data,
    required this.data1,
    required this.data2,
    this.category = "Exibições",
    this.category2 = "Fã-clube",
    this.category3 = "Musicas",
  });
  const InfoModel.album({
    required this.data,
    required this.data1,
    required this.data2,
    this.category = "Ano",
    this.category2 = "Músicas",
    this.category3 = "Minutos",
  });
}
