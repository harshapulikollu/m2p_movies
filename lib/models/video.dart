import 'dart:convert';

class Video {
  final WrapperType? wrapperType;
  final Kind? kind;
  final int? artistId;
  final int? collectionId;
  final int? trackId;
  final String? artistName;
  final String? collectionName;
  final String trackName;
  final String? collectionCensoredName;
  final String? trackCensoredName;
  final String? artistViewUrl;
  final String? collectionViewUrl;
  final String? trackViewUrl;
  final String? previewUrl;
  final String? artworkUrl30;
  final String? artworkUrl60;
  final String? artworkUrl100;
  final double? collectionPrice;
  final double? trackPrice;
  final DateTime? releaseDate;
  final Explicitness? collectionExplicitness;
  final Explicitness? trackExplicitness;
  final int? discCount;
  final int? discNumber;
  final int? trackCount;
  final int? trackNumber;
  final int? trackTimeMillis;
  final Country? country;
  final Currency? currency;
  final String? primaryGenreName;

  Video({
    this.wrapperType,
    this.kind,
    this.artistId,
    this.collectionId,
    this.trackId,
    this.artistName,
    this.collectionName,
    required this.trackName,
    this.collectionCensoredName,
    this.trackCensoredName,
    this.artistViewUrl,
    this.collectionViewUrl,
    this.trackViewUrl,
    this.previewUrl,
    this.artworkUrl30,
    this.artworkUrl60,
    this.artworkUrl100,
    this.collectionPrice,
    this.trackPrice,
    this.releaseDate,
    this.collectionExplicitness,
    this.trackExplicitness,
    this.discCount,
    this.discNumber,
    this.trackCount,
    this.trackNumber,
    this.trackTimeMillis,
    this.country,
    this.currency,
    this.primaryGenreName,
  });

  Video copyWith({
    WrapperType? wrapperType,
    Kind? kind,
    int? artistId,
    int? collectionId,
    int? trackId,
    String? artistName,
    String? collectionName,
    String? trackName,
    String? collectionCensoredName,
    String? trackCensoredName,
    String? artistViewUrl,
    String? collectionViewUrl,
    String? trackViewUrl,
    String? previewUrl,
    String? artworkUrl30,
    String? artworkUrl60,
    String? artworkUrl100,
    double? collectionPrice,
    double? trackPrice,
    DateTime? releaseDate,
    Explicitness? collectionExplicitness,
    Explicitness? trackExplicitness,
    int? discCount,
    int? discNumber,
    int? trackCount,
    int? trackNumber,
    int? trackTimeMillis,
    Country? country,
    Currency? currency,
    String? primaryGenreName,
  }) =>
      Video(
        wrapperType: wrapperType ?? this.wrapperType,
        kind: kind ?? this.kind,
        artistId: artistId ?? this.artistId,
        collectionId: collectionId ?? this.collectionId,
        trackId: trackId ?? this.trackId,
        artistName: artistName ?? this.artistName,
        collectionName: collectionName ?? this.collectionName,
        trackName: trackName ?? this.trackName,
        collectionCensoredName: collectionCensoredName ?? this.collectionCensoredName,
        trackCensoredName: trackCensoredName ?? this.trackCensoredName,
        artistViewUrl: artistViewUrl ?? this.artistViewUrl,
        collectionViewUrl: collectionViewUrl ?? this.collectionViewUrl,
        trackViewUrl: trackViewUrl ?? this.trackViewUrl,
        previewUrl: previewUrl ?? this.previewUrl,
        artworkUrl30: artworkUrl30 ?? this.artworkUrl30,
        artworkUrl60: artworkUrl60 ?? this.artworkUrl60,
        artworkUrl100: artworkUrl100 ?? this.artworkUrl100,
        collectionPrice: collectionPrice ?? this.collectionPrice,
        trackPrice: trackPrice ?? this.trackPrice,
        releaseDate: releaseDate ?? this.releaseDate,
        collectionExplicitness: collectionExplicitness ?? this.collectionExplicitness,
        trackExplicitness: trackExplicitness ?? this.trackExplicitness,
        discCount: discCount ?? this.discCount,
        discNumber: discNumber ?? this.discNumber,
        trackCount: trackCount ?? this.trackCount,
        trackNumber: trackNumber ?? this.trackNumber,
        trackTimeMillis: trackTimeMillis ?? this.trackTimeMillis,
        country: country ?? this.country,
        currency: currency ?? this.currency,
        primaryGenreName: primaryGenreName ?? this.primaryGenreName,
      );

  factory Video.fromRawJson(String str) => Video.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Video.fromJson(Map<String, dynamic> json) => Video(
    wrapperType: wrapperTypeValues.map[json["wrapperType"]]!,
    kind: kindValues.map[json["kind"]]!,
    artistId: json["artistId"],
    collectionId: json["collectionId"],
    trackId: json["trackId"],
    artistName: json["artistName"],
    collectionName: json["collectionName"],
    trackName: json["trackName"],
    collectionCensoredName: json["collectionCensoredName"],
    trackCensoredName: json["trackCensoredName"],
    artistViewUrl: json["artistViewUrl"],
    collectionViewUrl: json["collectionViewUrl"],
    trackViewUrl: json["trackViewUrl"],
    previewUrl: json["previewUrl"],
    artworkUrl30: json["artworkUrl30"],
    artworkUrl60: json["artworkUrl60"],
    artworkUrl100: json["artworkUrl100"],
    collectionPrice: json["collectionPrice"]?.toDouble(),
    trackPrice: json["trackPrice"]?.toDouble(),
    releaseDate: json["releaseDate"] == null ? null : DateTime.parse(json["releaseDate"]),
    collectionExplicitness: explicitnessValues.map[json["collectionExplicitness"]]!,
    trackExplicitness: explicitnessValues.map[json["trackExplicitness"]]!,
    discCount: json["discCount"],
    discNumber: json["discNumber"],
    trackCount: json["trackCount"],
    trackNumber: json["trackNumber"],
    trackTimeMillis: json["trackTimeMillis"],
    country: countryValues.map[json["country"]]!,
    currency: currencyValues.map[json["currency"]]!,
    primaryGenreName: json["primaryGenreName"],
  );

  Map<String, dynamic> toJson() => {
    "wrapperType": wrapperTypeValues.reverse[wrapperType],
    "kind": kindValues.reverse[kind],
    "artistId": artistId,
    "collectionId": collectionId,
    "trackId": trackId,
    "artistName": artistName,
    "collectionName": collectionName,
    "trackName": trackName,
    "collectionCensoredName": collectionCensoredName,
    "trackCensoredName": trackCensoredName,
    "artistViewUrl": artistViewUrl,
    "collectionViewUrl": collectionViewUrl,
    "trackViewUrl": trackViewUrl,
    "previewUrl": previewUrl,
    "artworkUrl30": artworkUrl30,
    "artworkUrl60": artworkUrl60,
    "artworkUrl100": artworkUrl100,
    "collectionPrice": collectionPrice,
    "trackPrice": trackPrice,
    "releaseDate": releaseDate?.toIso8601String(),
    "collectionExplicitness": explicitnessValues.reverse[collectionExplicitness],
    "trackExplicitness": explicitnessValues.reverse[trackExplicitness],
    "discCount": discCount,
    "discNumber": discNumber,
    "trackCount": trackCount,
    "trackNumber": trackNumber,
    "trackTimeMillis": trackTimeMillis,
    "country": countryValues.reverse[country],
    "currency": currencyValues.reverse[currency],
    "primaryGenreName": primaryGenreName,
  };
}

enum Explicitness {
  NOT_EXPLICIT
}

final explicitnessValues = EnumValues({
  "notExplicit": Explicitness.NOT_EXPLICIT
});

enum Country {
  USA
}

final countryValues = EnumValues({
  "USA": Country.USA
});

enum Currency {
  USD
}

final currencyValues = EnumValues({
  "USD": Currency.USD
});

enum Kind {
  MUSIC_VIDEO
}

final kindValues = EnumValues({
  "music-video": Kind.MUSIC_VIDEO
});

enum WrapperType {
  TRACK
}

final wrapperTypeValues = EnumValues({
  "track": WrapperType.TRACK
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
