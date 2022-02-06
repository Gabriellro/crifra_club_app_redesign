class InfoModel {
  final String data, data1, data2;
  final String category, category1, category2;

  const InfoModel.user({
    required this.data,
    required this.data1,
    required this.data2,
    this.category = "Coletâneas",
    this.category1 = "Seguidores",
    this.category2 = "Seguindo",
  });
  const InfoModel.singer({
    required this.data,
    required this.data1,
    required this.data2,
    this.category = "Exibições",
    this.category1 = "Fã-clube",
    this.category2 = "Musicas",
  });
  const InfoModel.album({
    required this.data,
    required this.data1,
    required this.data2,
    this.category = "Ano",
    this.category1 = "Músicas",
    this.category2 = "Minutos",
  });
}
