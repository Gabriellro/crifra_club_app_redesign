import 'package:crifra_club_app_redesign/src/shared/models/models.dart';

final List<SongModel> songModels = [
  SongModel(
    name: "Peace Of Mind ",
    isfeat: true,
    feat: 'feat. Vargas & Lagola',
    author: 'Avicii, Vargas & Lagola',
  ),
  SongModel(
    name: "Heaven ",
    author: 'Avicii',
  ),
  SongModel(
    name: "SOS ",
    isfeat: true,
    feat: '(feat. Aloe Blacc)',
    author: 'Avicii, Aloe Blacc',
  ),
  SongModel(
    name: "Tough Love ",
    isfeat: true,
    feat: '(feat. Agnes, Vargas & Lago...',
    author: 'Avicii, Agnes, Vargas & Lagola',
  ),
  SongModel(
    name: "Bad Reputation ",
    isfeat: true,
    feat: '(feat. Joe Janiak)',
    author: 'Avicii, Joe Janiak',
  ),
  SongModel(
    name: "Ain't a Thing ",
    isfeat: true,
    feat: '(feat. Bonn)',
    author: 'Avicii, Bonn',
  ),
  SongModel(
    name: 'Hold The Line ',
    isfeat: true,
    feat: '(feat. A R I Z O N A)',
    author: 'Avicii, A R I Z O N A',
  ),
  SongModel(
    name: "Freak ",
    isfeat: true,
    feat: '(feat. Bonn)',
    author: 'Avicii, Bonn',
  ),
  SongModel(
    name: "Excuse Me Mr. Sir ",
    isfeat: true,
    feat: '(feat. Vargas & Lagola)',
    author: 'Avicii, Vargas & Lagola',
  ),
  SongModel(
    name: "Heart Upon My Sleeve ",
    isfeat: true,
    feat: '(feat. Imagine...',
    author: 'Avicii, Imagine Dragons',
  ),
  SongModel(
    name: "Never Leave Me ",
    isfeat: true,
    feat: '(feat. Joe Janiak)',
    author: 'Avicii, Joe Janiak',
  ),
  SongModel(
    name: "Fades Away ",
    isfeat: true,
    feat: '(feat. Noonie Bao)',
    author: 'Avicii, Noonie Bao',
  ),
];

final List<AlbumModel> albumModels = [
  AlbumModel(
    name: 'Tim',
    author: 'Avicii',
    albumimageUrl:
        'https://i.scdn.co/image/ab67616d0000b273660ee24281a547103f466ff5',
    ontap: '/Album',
    songModel: songModels,
  ),
  AlbumModel(
    name: 'Stories',
    author: 'Avicii',
    albumimageUrl:
        'https://i.scdn.co/image/ab67616d0000b2735393c5d3cac806092a9bc468',
    ontap: '/Album',
  ),
  AlbumModel(
    name: 'True: Avicii By Avicii',
    author: 'Avicii',
    albumimageUrl:
        'https://i.scdn.co/image/ab67616d0000b273182fe5b5d3e3c3fcc895a3c8',
    ontap: '/Album',
  ),
  AlbumModel(
    name: 'The Days / Nights',
    author: 'Avicii',
    albumimageUrl:
        'https://i.scdn.co/image/ab67616d0000b2730ae4f4d42e4a09f3a29f64ad',
    ontap: '/Album',
  ),
];

// final List<Story> stories = [
//   Story(
//     ArtistProfileModel: onlineArtistProfileModels[2],
//     imageUrl:
//         'https://images.unsplash.com/photo-1498307833015-e7b400441eb8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=80',
//   ),
//   Story(
//     ArtistProfileModel: onlineArtistProfileModels[6],
//     imageUrl:
//         'https://images.unsplash.com/photo-1499363536502-87642509e31b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
//     isViewed: true,
//   ),
//   Story(
//     ArtistProfileModel: onlineArtistProfileModels[3],
//     imageUrl:
//         'https://images.unsplash.com/photo-1497262693247-aa258f96c4f5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=624&q=80',
//   ),
//   Story(
//     ArtistProfileModel: onlineArtistProfileModels[9],
//     imageUrl:
//         'https://images.unsplash.com/photo-1496950866446-3253e1470e8e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
//     isViewed: true,
//   ),
//   Story(
//     ArtistProfileModel: onlineArtistProfileModels[7],
//     imageUrl:
//         'https://images.unsplash.com/photo-1475688621402-4257c812d6db?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1267&q=80',
//   ),
//   Story(
//     ArtistProfileModel: onlineArtistProfileModels[2],
//     imageUrl:
//         'https://images.unsplash.com/photo-1498307833015-e7b400441eb8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=80',
//   ),
//   Story(
//     ArtistProfileModel: onlineArtistProfileModels[6],
//     imageUrl:
//         'https://images.unsplash.com/photo-1499363536502-87642509e31b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
//     isViewed: true,
//   ),
//   Story(
//     ArtistProfileModel: onlineArtistProfileModels[3],
//     imageUrl:
//         'https://images.unsplash.com/photo-1497262693247-aa258f96c4f5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=624&q=80',
//   ),
//   Story(
//     ArtistProfileModel: onlineArtistProfileModels[9],
//     imageUrl:
//         'https://images.unsplash.com/photo-1496950866446-3253e1470e8e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
//     isViewed: true,
//   ),
//   Story(
//     ArtistProfileModel: onlineArtistProfileModels[7],
//     imageUrl:
//         'https://images.unsplash.com/photo-1475688621402-4257c812d6db?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1267&q=80',
//   ),
// ];

// final List<Post> posts = [
//   Post(
//     ArtistProfileModel: currentArtistProfileModel,
//     caption: 'Check out these cool puppers',
//     timeAgo: '58m',
//     imageUrl: 'https://images.unsplash.com/photo-1525253086316-d0c936c814f8',
//     likes: 1202,
//     comments: 184,
//     shares: 96,
//   ),
//   Post(
//     ArtistProfileModel: onlineArtistProfileModels[5],
//     caption:
//         'Please enjoy this placeholder text: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
//     timeAgo: '3hr',
//     imageUrl: null,
//     likes: 683,
//     comments: 79,
//     shares: 18,
//   ),
//   Post(
//     ArtistProfileModel: onlineArtistProfileModels[4],
//     caption: 'This is a very good boi.',
//     timeAgo: '8hr',
//     imageUrl:
//         'https://images.unsplash.com/photo-1575535468632-345892291673?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
//     likes: 894,
//     comments: 201,
//     shares: 27,
//   ),
//   Post(
//     ArtistProfileModel: onlineArtistProfileModels[3],
//     caption: 'Adventure 🏔',
//     timeAgo: '15hr',
//     imageUrl:
//         'https://images.unsplash.com/photo-1573331519317-30b24326bb9a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
//     likes: 722,
//     comments: 183,
//     shares: 42,
//   ),
//   Post(
//     ArtistProfileModel: onlineArtistProfileModels[0],
//     caption:
//         'More placeholder text for the soul: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
//     timeAgo: '1d',
//     imageUrl: null,
//     likes: 482,
//     comments: 37,
//     shares: 9,
//   ),
//   Post(
//     ArtistProfileModel: onlineArtistProfileModels[9],
//     caption: 'A classic.',
//     timeAgo: '1d',
//     imageUrl:
//         'https://images.unsplash.com/reserve/OlxPGKgRUaX0E1hg3b3X_Dumbo.JPG?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
//     likes: 1523,
//     shares: 129,
//     comments: 301,
//   )
// ];
