import 'package:flutter/material.dart';

import 'package:crifra_club_app_redesign/src/shared/models/_export_models.dart';

final List<SongModel> songModels = [
  SongModel(
    name: "Peace Of Mind",
    author: singers[0],
    feat: singers[3],
  ),
  SongModel(
    name: "Heaven",
    feat: singers[3],
    author: singers[0],
    isVideoLessons: true,
  ),
  SongModel(
    name: "SOS",
    author: singers[0],
    feat: singers[3],
  ),
  SongModel(
    name: "Tough Love",
    author: singers[0],
    feat: singers[3],
  ),
  SongModel(
    name: "Bad Reputation",
    feat: singers[4],
    author: singers[0],
  ),
  SongModel(
    name: "Ain't a Thing",
    author: singers[0],
    feat: singers[5],
    isExplicit: true,
  ),
  SongModel(
    name: "Hold The Line",
    author: singers[0],
    feat: singers[6],
  ),
  SongModel(
    name: "Freak",
    author: singers[0],
    feat: singers[5],
    isExplicit: true,
  ),
  SongModel(
    name: "Excuse Me Mr. Sir",
    author: singers[0],
    feat: singers[3],
    isExplicit: true,
  ),
  SongModel(
    name: "Heart Upon My Sleeve ",
    author: singers[0],
    feat: singers[7],
  ),
  SongModel(
    name: "Never Leave Me",
    author: singers[0],
    feat: singers[4],
  ),
  SongModel(
    name: "Fades Away",
    author: singers[0],
    feat: singers[8],
  ),
];

final List<AlbumModel> albumModels = [
  AlbumModel(
    name: 'Tim',
    author: singers[0],
    albumimageUrl:
        'https://i.scdn.co/image/ab67616d0000b273660ee24281a547103f466ff5',
    ontap: '/Album',
    infoModel: InfoModel.album(data: "2019", data1: "12", data2: "38"),
    songModel: songModels,
  ),
  AlbumModel(
    name: 'Stories',
    author: singers[0],
    albumimageUrl:
        'https://i.scdn.co/image/ab67616d0000b2735393c5d3cac806092a9bc468',
    infoModel: InfoModel.album(data: "2019", data1: "12", data2: "38"),
    ontap: '/Album',
    songModel: songModels,
  ),
  AlbumModel(
    name: 'True: Avicii By Avicii',
    author: singers[0],
    albumimageUrl:
        'https://i.scdn.co/image/ab67616d0000b273182fe5b5d3e3c3fcc895a3c8',
    infoModel: InfoModel.album(data: "2019", data1: "12", data2: "38"),
    ontap: '/Album',
    songModel: songModels,
  ),
  AlbumModel(
    name: 'The Days / Nights',
    author: singers[0],
    albumimageUrl:
        'https://i.scdn.co/image/ab67616d0000b2730ae4f4d42e4a09f3a29f64ad',
    infoModel: InfoModel.album(data: "2019", data1: "12", data2: "38"),
    ontap: '/Album',
    songModel: songModels,
  ),
];
final List<SetSettingsModel> setSettingsModelsGeneral = [
  SetSettingsModel(
    isIcon: true,
    icon: Icons.notifications_rounded,
    label: "notifications",
  ),
  SetSettingsModel(
    isIcon: true,
    icon: Icons.nights_stay_rounded,
    label: "Dark mode",
    isSwitch: true,
  ),
];
final List<SetSettingsModel> setSettingsModelsDownloads = [
  SetSettingsModel(
    icon: Icons.storage_rounded,
    label: "Armazenamento",
    isIcon: true,
  ),
  SetSettingsModel(
    icon: Icons.data_usage_rounded,
    label: "Uso de dados",
    isIcon: true,
  ),
];
final List<SetSettingsModel> setSettingsModelsSobre = [
  SetSettingsModel(
    icon: Icons.get_app_rounded,
    label: "Conheça os nossos produtos",
    isIcon: true,
  ),
  SetSettingsModel(
    isIcon: true,
    icon: Icons.help_outline_rounded,
    label: "Suporte",
  ),
  SetSettingsModel(
    icon: Icons.info_rounded,
    label: "Informações do Aplicativo",
    isIcon: true,
  ),
];

final List<SetSettingsModel> setSettingsModelscipher = [
  SetSettingsModel.cipher(
    label: "Instrumento",
    sublabel: "Violão/Guitarra",
  ),
  SetSettingsModel.cipher(
    label: "Versão",
    sublabel: "Principal",
  ),
  SetSettingsModel.cipher(
    label: "Afinação",
    sublabel: "E A D G B E",
  ),
  SetSettingsModel.cipher(
    label: "Tom",
    sublabel: "Bm (Padrão)",
  ),
  SetSettingsModel.cipher(
    label: "Capotraste",
    sublabel: "2ª casa",
  ),
  SetSettingsModel(
    label: "Lista de acordes",
    isSwitch: true,
  ),
  SetSettingsModel(
    label: "Mostrar tabs",
    isSwitch: true,
  ),
  SetSettingsModel(
    label: "Canhoto",
    isSwitch: true,
  ),
];

final List<SingerModel> singers = [
  //0
  SingerModel(
    name: 'Avicii',
    imageUrl:
        'https://i.scdn.co/image/ab6761610000e5eb09bf4814c6585e1f69dfeef7',
    info: InfoModel.singer(data: "3.9M", data1: "1.2k", data2: "96"),
  ),
  //1
  SingerModel(
    name: 'Aloe Blacc',
    imageUrl:
        'https://i.scdn.co/image/ab6761610000e5eb560df03f8fee7731d18a9488',
    info: InfoModel.singer(data: "3.9M", data1: "1.2k", data2: "96"),
  ),
  //2
  SingerModel(
    name: 'Agnes',
    imageUrl:
        'https://i.scdn.co/image/ab6761610000f178c0927a09248d75b7cda51193',
    info: InfoModel.singer(data: "3.9M", data1: "1.2k", data2: "96"),
  ),
  //3
  SingerModel(
    name: 'Vargas & Lagola',
    imageUrl:
        'https://i.scdn.co/image/ab6761610000f1782bb6df086820026e38d81d65',
    info: InfoModel.singer(data: "3.9M", data1: "1.2k", data2: "96"),
  ),
  //4
  SingerModel(
    name: 'Joe Janiak',
    imageUrl:
        'https://i.scdn.co/image/ab6761610000e5eb7c5b77780fa7c2fb369e53ae',
    info: InfoModel.singer(data: "3.9M", data1: "1.2k", data2: "96"),
  ),
  //5
  SingerModel(
    name: 'Bonn',
    imageUrl:
        'https://i.scdn.co/image/ab6761610000f178cb3d42eeeb3e881eb302ddf6',
    info: InfoModel.singer(data: "3.9M", data1: "1.2k", data2: "96"),
  ),
  //6
  SingerModel(
    name: 'A R I Z O N A',
    imageUrl:
        'https://i.scdn.co/image/ab6761610000e5eb8ec2cd2c426ae40191391487',
    info: InfoModel.singer(data: "3.9M", data1: "1.2k", data2: "96"),
  ),
  //7
  SingerModel(
    name: 'Imagine Dragons',
    imageUrl:
        'https://i.scdn.co/image/ab6761610000e5eb920dc1f617550de8388f368e',
    info: InfoModel.singer(data: "3.9M", data1: "1.2k", data2: "96"),
  ),
  //8
  SingerModel(
    name: 'Noonie Bao',
    imageUrl:
        'https://i.scdn.co/image/81ca801d43a7125c9146fc8c938bab93585aa50f',
    info: InfoModel.singer(data: "3.9M", data1: "1.2k", data2: "96"),
  ),
];
