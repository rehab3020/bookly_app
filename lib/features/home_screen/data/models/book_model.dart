import 'dart:convert';

class BooksModel {
  String kind;
  int totalItems;
  List<Item> items;

  BooksModel({
    required this.kind,
    required this.totalItems,
    required this.items,
  });

  factory BooksModel.fromRawJson(String str) => BooksModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BooksModel.fromJson(Map<String, dynamic> json) => BooksModel(
    kind: json["kind"],
    totalItems: json["totalItems"],
    items: List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "kind": kind,
    "totalItems": totalItems,
    "items": List<dynamic>.from(items.map((x) => x.toJson())),
  };
}

class Item {
  Kind kind;
  Id id;
  String etag;
  String selfLink;
  VolumeInfo volumeInfo;
  SaleInfo saleInfo;
  AccessInfo accessInfo;

  Item({
    required this.kind,
    required this.id,
    required this.etag,
    required this.selfLink,
    required this.volumeInfo,
    required this.saleInfo,
    required this.accessInfo,
  });

  factory Item.fromRawJson(String str) => Item.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Item.fromJson(Map<String, dynamic> json) => Item(
    kind: kindValues.map[json["kind"]]!,
    id: idValues.map[json["id"]]!,
    etag: json["etag"],
    selfLink: json["selfLink"],
    volumeInfo: VolumeInfo.fromJson(json["volumeInfo"]),
    saleInfo: SaleInfo.fromJson(json["saleInfo"]),
    accessInfo: AccessInfo.fromJson(json["accessInfo"]),
  );

  Map<String, dynamic> toJson() => {
    "kind": kindValues.reverse[kind],
    "id": idValues.reverse[id],
    "etag": etag,
    "selfLink": selfLink,
    "volumeInfo": volumeInfo.toJson(),
    "saleInfo": saleInfo.toJson(),
    "accessInfo": accessInfo.toJson(),
  };
}

class AccessInfo {
  Country country;
  Viewability viewability;
  bool embeddable;
  bool publicDomain;
  TextToSpeechPermission textToSpeechPermission;
  Epub epub;
  Pdf pdf;
  String webReaderLink;
  AccessViewStatus accessViewStatus;
  bool quoteSharingAllowed;

  AccessInfo({
    required this.country,
    required this.viewability,
    required this.embeddable,
    required this.publicDomain,
    required this.textToSpeechPermission,
    required this.epub,
    required this.pdf,
    required this.webReaderLink,
    required this.accessViewStatus,
    required this.quoteSharingAllowed,
  });

  factory AccessInfo.fromRawJson(String str) => AccessInfo.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AccessInfo.fromJson(Map<String, dynamic> json) => AccessInfo(
    country: countryValues.map[json["country"]]!,
    viewability: viewabilityValues.map[json["viewability"]]!,
    embeddable: json["embeddable"],
    publicDomain: json["publicDomain"],
    textToSpeechPermission: textToSpeechPermissionValues.map[json["textToSpeechPermission"]]!,
    epub: Epub.fromJson(json["epub"]),
    pdf: Pdf.fromJson(json["pdf"]),
    webReaderLink: json["webReaderLink"],
    accessViewStatus: accessViewStatusValues.map[json["accessViewStatus"]]!,
    quoteSharingAllowed: json["quoteSharingAllowed"],
  );

  Map<String, dynamic> toJson() => {
    "country": countryValues.reverse[country],
    "viewability": viewabilityValues.reverse[viewability],
    "embeddable": embeddable,
    "publicDomain": publicDomain,
    "textToSpeechPermission": textToSpeechPermissionValues.reverse[textToSpeechPermission],
    "epub": epub.toJson(),
    "pdf": pdf.toJson(),
    "webReaderLink": webReaderLink,
    "accessViewStatus": accessViewStatusValues.reverse[accessViewStatus],
    "quoteSharingAllowed": quoteSharingAllowed,
  };
}

enum AccessViewStatus {
  FULL_PUBLIC_DOMAIN
}

final accessViewStatusValues = EnumValues({
  "FULL_PUBLIC_DOMAIN": AccessViewStatus.FULL_PUBLIC_DOMAIN
});

enum Country {
  US
}

final countryValues = EnumValues({
  "US": Country.US
});

class Epub {
  bool isAvailable;
  String downloadLink;

  Epub({
    required this.isAvailable,
    required this.downloadLink,
  });

  factory Epub.fromRawJson(String str) => Epub.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Epub.fromJson(Map<String, dynamic> json) => Epub(
    isAvailable: json["isAvailable"],
    downloadLink: json["downloadLink"],
  );

  Map<String, dynamic> toJson() => {
    "isAvailable": isAvailable,
    "downloadLink": downloadLink,
  };
}

class Pdf {
  bool isAvailable;

  Pdf({
    required this.isAvailable,
  });

  factory Pdf.fromRawJson(String str) => Pdf.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Pdf.fromJson(Map<String, dynamic> json) => Pdf(
    isAvailable: json["isAvailable"],
  );

  Map<String, dynamic> toJson() => {
    "isAvailable": isAvailable,
  };
}

enum TextToSpeechPermission {
  ALLOWED
}

final textToSpeechPermissionValues = EnumValues({
  "ALLOWED": TextToSpeechPermission.ALLOWED
});

enum Viewability {
  ALL_PAGES
}

final viewabilityValues = EnumValues({
  "ALL_PAGES": Viewability.ALL_PAGES
});

enum Id {
  L_IX_RRC_HLL_GC_C
}

final idValues = EnumValues({
  "LIxRrcHllGcC": Id.L_IX_RRC_HLL_GC_C
});

enum Kind {
  BOOKS_VOLUME
}

final kindValues = EnumValues({
  "books#volume": Kind.BOOKS_VOLUME
});

class SaleInfo {
  Country country;
  Saleability saleability;
  bool isEbook;
  String buyLink;

  SaleInfo({
    required this.country,
    required this.saleability,
    required this.isEbook,
    required this.buyLink,
  });

  factory SaleInfo.fromRawJson(String str) => SaleInfo.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SaleInfo.fromJson(Map<String, dynamic> json) => SaleInfo(
    country: countryValues.map[json["country"]]!,
    saleability: saleabilityValues.map[json["saleability"]]!,
    isEbook: json["isEbook"],
    buyLink: json["buyLink"],
  );

  Map<String, dynamic> toJson() => {
    "country": countryValues.reverse[country],
    "saleability": saleabilityValues.reverse[saleability],
    "isEbook": isEbook,
    "buyLink": buyLink,
  };
}

enum Saleability {
  FREE
}

final saleabilityValues = EnumValues({
  "FREE": Saleability.FREE
});

class VolumeInfo {
  String title;
  List<Author> authors;
  String publishedDate;
  List<IndustryIdentifier> industryIdentifiers;
  ReadingModes readingModes;
  int pageCount;
  PrintType printType;
  List<Category> categories;
  MaturityRating maturityRating;
  bool allowAnonLogging;
  ContentVersion contentVersion;
  PanelizationSummary panelizationSummary;
  ImageLinks imageLinks;
  Language language;
  String previewLink;
  String infoLink;
  String canonicalVolumeLink;

  VolumeInfo({
    required this.title,
    required this.authors,
    required this.publishedDate,
    required this.industryIdentifiers,
    required this.readingModes,
    required this.pageCount,
    required this.printType,
    required this.categories,
    required this.maturityRating,
    required this.allowAnonLogging,
    required this.contentVersion,
    required this.panelizationSummary,
    required this.imageLinks,
    required this.language,
    required this.previewLink,
    required this.infoLink,
    required this.canonicalVolumeLink,
  });

  factory VolumeInfo.fromRawJson(String str) => VolumeInfo.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory VolumeInfo.fromJson(Map<String, dynamic> json) => VolumeInfo(
    title: json["title"],
    authors: List<Author>.from(json["authors"].map((x) => authorValues.map[x]!)),
    publishedDate: json["publishedDate"],
    industryIdentifiers: List<IndustryIdentifier>.from(json["industryIdentifiers"].map((x) => IndustryIdentifier.fromJson(x))),
    readingModes: ReadingModes.fromJson(json["readingModes"]),
    pageCount: json["pageCount"],
    printType: printTypeValues.map[json["printType"]]!,
    categories: List<Category>.from(json["categories"].map((x) => categoryValues.map[x]!)),
    maturityRating: maturityRatingValues.map[json["maturityRating"]]!,
    allowAnonLogging: json["allowAnonLogging"],
    contentVersion: contentVersionValues.map[json["contentVersion"]]!,
    panelizationSummary: PanelizationSummary.fromJson(json["panelizationSummary"]),
    imageLinks: ImageLinks.fromJson(json["imageLinks"]),
    language: languageValues.map[json["language"]]!,
    previewLink: json["previewLink"],
    infoLink: json["infoLink"],
    canonicalVolumeLink: json["canonicalVolumeLink"],
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "authors": List<dynamic>.from(authors.map((x) => authorValues.reverse[x])),
    "publishedDate": publishedDate,
    "industryIdentifiers": List<dynamic>.from(industryIdentifiers.map((x) => x.toJson())),
    "readingModes": readingModes.toJson(),
    "pageCount": pageCount,
    "printType": printTypeValues.reverse[printType],
    "categories": List<dynamic>.from(categories.map((x) => categoryValues.reverse[x])),
    "maturityRating": maturityRatingValues.reverse[maturityRating],
    "allowAnonLogging": allowAnonLogging,
    "contentVersion": contentVersionValues.reverse[contentVersion],
    "panelizationSummary": panelizationSummary.toJson(),
    "imageLinks": imageLinks.toJson(),
    "language": languageValues.reverse[language],
    "previewLink": previewLink,
    "infoLink": infoLink,
    "canonicalVolumeLink": canonicalVolumeLink,
  };
}

enum Author {
  BRADFORD_CHANEY
}

final authorValues = EnumValues({
  "Bradford Chaney": Author.BRADFORD_CHANEY
});

enum Category {
  COMPUTER
}

final categoryValues = EnumValues({
  "Computer": Category.COMPUTER
});

enum ContentVersion {
  THE_1680_FULL_1
}

final contentVersionValues = EnumValues({
  "1.6.8.0.full.1": ContentVersion.THE_1680_FULL_1
});

class ImageLinks {
  String smallThumbnail;
  String thumbnail;

  ImageLinks({
    required this.smallThumbnail,
    required this.thumbnail,
  });

  factory ImageLinks.fromRawJson(String str) => ImageLinks.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ImageLinks.fromJson(Map<String, dynamic> json) => ImageLinks(
    smallThumbnail: json["smallThumbnail"],
    thumbnail: json["thumbnail"],
  );

  Map<String, dynamic> toJson() => {
    "smallThumbnail": smallThumbnail,
    "thumbnail": thumbnail,
  };
}

class IndustryIdentifier {
  Type type;
  Identifier identifier;

  IndustryIdentifier({
    required this.type,
    required this.identifier,
  });

  factory IndustryIdentifier.fromRawJson(String str) => IndustryIdentifier.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory IndustryIdentifier.fromJson(Map<String, dynamic> json) => IndustryIdentifier(
    type: typeValues.map[json["type"]]!,
    identifier: identifierValues.map[json["identifier"]]!,
  );

  Map<String, dynamic> toJson() => {
    "type": typeValues.reverse[type],
    "identifier": identifierValues.reverse[identifier],
  };
}

enum Identifier {
  IND_30000038622613
}

final identifierValues = EnumValues({
  "IND:30000038622613": Identifier.IND_30000038622613
});

enum Type {
  OTHER
}

final typeValues = EnumValues({
  "OTHER": Type.OTHER
});

enum Language {
  EN
}

final languageValues = EnumValues({
  "en": Language.EN
});

enum MaturityRating {
  NOT_MATURE
}

final maturityRatingValues = EnumValues({
  "NOT_MATURE": MaturityRating.NOT_MATURE
});

class PanelizationSummary {
  bool containsEpubBubbles;
  bool containsImageBubbles;

  PanelizationSummary({
    required this.containsEpubBubbles,
    required this.containsImageBubbles,
  });

  factory PanelizationSummary.fromRawJson(String str) => PanelizationSummary.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PanelizationSummary.fromJson(Map<String, dynamic> json) => PanelizationSummary(
    containsEpubBubbles: json["containsEpubBubbles"],
    containsImageBubbles: json["containsImageBubbles"],
  );

  Map<String, dynamic> toJson() => {
    "containsEpubBubbles": containsEpubBubbles,
    "containsImageBubbles": containsImageBubbles,
  };
}

enum PrintType {
  BOOK
}

final printTypeValues = EnumValues({
  "BOOK": PrintType.BOOK
});

class ReadingModes {
  bool text;
  bool image;

  ReadingModes({
    required this.text,
    required this.image,
  });

  factory ReadingModes.fromRawJson(String str) => ReadingModes.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ReadingModes.fromJson(Map<String, dynamic> json) => ReadingModes(
    text: json["text"],
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "text": text,
    "image": image,
  };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}






//
// class BookModel {
//   String kind;
//   String id;
//   String etag;
//   String selfLink;
//   VolumeInfo volumeInfo;
//   SaleInfo saleInfo;
//   AccessInfo accessInfo;
//   SearchInfo searchInfo;
//
//   BookModel({
//     required this.kind,
//     required this.id,
//     required this.etag,
//     required this.selfLink,
//     required this.volumeInfo,
//     required this.saleInfo,
//     required this.accessInfo,
//     required this.searchInfo,
//   });
//
//   factory BookModel.fromRawJson(String str) =>
//       BookModel.fromJson(json.decode(str));
//
//   String toRawJson() => json.encode(toJson());
//
//   factory BookModel.fromJson(Map<String, dynamic> json) => BookModel(
//         kind: json["kind"],
//         id: json["id"],
//         etag: json["etag"],
//         selfLink: json["selfLink"],
//         volumeInfo: VolumeInfo.fromJson(json["volumeInfo"]),
//         saleInfo: SaleInfo.fromJson(json["saleInfo"]),
//         accessInfo: AccessInfo.fromJson(json["accessInfo"]),
//         searchInfo: SearchInfo.fromJson(json["searchInfo"]),
//       );
//
//   Map<String, dynamic> toJson() => {
//         "kind": kind,
//         "id": id,
//         "etag": etag,
//         "selfLink": selfLink,
//         "volumeInfo": volumeInfo.toJson(),
//         "saleInfo": saleInfo.toJson(),
//         "accessInfo": accessInfo.toJson(),
//         "searchInfo": searchInfo.toJson(),
//       };
// }
//
// class AccessInfo {
//   String country;
//   String viewability;
//   bool embeddable;
//   bool publicDomain;
//   String textToSpeechPermission;
//   Epub epub;
//   Pdf pdf;
//   String webReaderLink;
//   String accessViewStatus;
//   bool quoteSharingAllowed;
//
//   AccessInfo({
//     required this.country,
//     required this.viewability,
//     required this.embeddable,
//     required this.publicDomain,
//     required this.textToSpeechPermission,
//     required this.epub,
//     required this.pdf,
//     required this.webReaderLink,
//     required this.accessViewStatus,
//     required this.quoteSharingAllowed,
//   });
//
//   factory AccessInfo.fromRawJson(String str) =>
//       AccessInfo.fromJson(json.decode(str));
//
//   String toRawJson() => json.encode(toJson());
//
//   factory AccessInfo.fromJson(Map<String, dynamic> json) => AccessInfo(
//         country: json["country"],
//         viewability: json["viewability"],
//         embeddable: json["embeddable"],
//         publicDomain: json["publicDomain"],
//         textToSpeechPermission: json["textToSpeechPermission"],
//         epub: Epub.fromJson(json["epub"]),
//         pdf: Pdf.fromJson(json["pdf"]),
//         webReaderLink: json["webReaderLink"],
//         accessViewStatus: json["accessViewStatus"],
//         quoteSharingAllowed: json["quoteSharingAllowed"],
//       );
//
//   Map<String, dynamic> toJson() => {
//         "country": country,
//         "viewability": viewability,
//         "embeddable": embeddable,
//         "publicDomain": publicDomain,
//         "textToSpeechPermission": textToSpeechPermission,
//         "epub": epub.toJson(),
//         "pdf": pdf.toJson(),
//         "webReaderLink": webReaderLink,
//         "accessViewStatus": accessViewStatus,
//         "quoteSharingAllowed": quoteSharingAllowed,
//       };
// }
//
// class Epub {
//   bool isAvailable;
//   String downloadLink;
//
//   Epub({
//     required this.isAvailable,
//     required this.downloadLink,
//   });
//
//   factory Epub.fromRawJson(String str) => Epub.fromJson(json.decode(str));
//
//   String toRawJson() => json.encode(toJson());
//
//   factory Epub.fromJson(Map<String, dynamic> json) => Epub(
//         isAvailable: json["isAvailable"],
//         downloadLink: json["downloadLink"],
//       );
//
//   Map<String, dynamic> toJson() => {
//         "isAvailable": isAvailable,
//         "downloadLink": downloadLink,
//       };
// }
//
// class Pdf {
//   bool isAvailable;
//
//   Pdf({
//     required this.isAvailable,
//   });
//
//   factory Pdf.fromRawJson(String str) => Pdf.fromJson(json.decode(str));
//
//   String toRawJson() => json.encode(toJson());
//
//   factory Pdf.fromJson(Map<String, dynamic> json) => Pdf(
//         isAvailable: json["isAvailable"],
//       );
//
//   Map<String, dynamic> toJson() => {
//         "isAvailable": isAvailable,
//       };
// }
//
// class SaleInfo {
//   String country;
//   String saleability;
//   bool isEbook;
//   String buyLink;
//
//   SaleInfo({
//     required this.country,
//     required this.saleability,
//     required this.isEbook,
//     required this.buyLink,
//   });
//
//   factory SaleInfo.fromRawJson(String str) =>
//       SaleInfo.fromJson(json.decode(str));
//
//   String toRawJson() => json.encode(toJson());
//
//   factory SaleInfo.fromJson(Map<String, dynamic> json) => SaleInfo(
//         country: json["country"],
//         saleability: json["saleability"],
//         isEbook: json["isEbook"],
//         buyLink: json["buyLink"],
//       );
//
//   Map<String, dynamic> toJson() => {
//         "country": country,
//         "saleability": saleability,
//         "isEbook": isEbook,
//         "buyLink": buyLink,
//       };
// }
//
// class SearchInfo {
//   String textSnippet;
//
//   SearchInfo({
//     required this.textSnippet,
//   });
//
//   factory SearchInfo.fromRawJson(String str) =>
//       SearchInfo.fromJson(json.decode(str));
//
//   String toRawJson() => json.encode(toJson());
//
//   factory SearchInfo.fromJson(Map<String, dynamic> json) => SearchInfo(
//         textSnippet: json["textSnippet"],
//       );
//
//   Map<String, dynamic> toJson() => {
//         "textSnippet": textSnippet,
//       };
// }
//
// class VolumeInfo {
//   String title;
//   String publishedDate;
//   List<IndustryIdentifier> industryIdentifiers;
//   ReadingModes readingModes;
//   int pageCount;
//   String printType;
//   List<String> categories;
//   String maturityRating;
//   bool allowAnonLogging;
//   String contentVersion;
//   PanelizationSummary panelizationSummary;
//   ImageLinks imageLinks;
//   String language;
//   String previewLink;
//   String infoLink;
//   String canonicalVolumeLink;
//
//   VolumeInfo({
//     required this.title,
//     required this.publishedDate,
//     required this.industryIdentifiers,
//     required this.readingModes,
//     required this.pageCount,
//     required this.printType,
//     required this.categories,
//     required this.maturityRating,
//     required this.allowAnonLogging,
//     required this.contentVersion,
//     required this.panelizationSummary,
//     required this.imageLinks,
//     required this.language,
//     required this.previewLink,
//     required this.infoLink,
//     required this.canonicalVolumeLink,
//   });
//
//   factory VolumeInfo.fromRawJson(String str) =>
//       VolumeInfo.fromJson(json.decode(str));
//
//   String toRawJson() => json.encode(toJson());
//
//   factory VolumeInfo.fromJson(Map<String, dynamic> json) => VolumeInfo(
//         title: json["title"],
//         publishedDate: json["publishedDate"],
//         industryIdentifiers: List<IndustryIdentifier>.from(
//             json["industryIdentifiers"]
//                 .map((x) => IndustryIdentifier.fromJson(x))),
//         readingModes: ReadingModes.fromJson(json["readingModes"]),
//         pageCount: json["pageCount"],
//         printType: json["printType"],
//         categories: List<String>.from(json["categories"].map((x) => x)),
//         maturityRating: json["maturityRating"],
//         allowAnonLogging: json["allowAnonLogging"],
//         contentVersion: json["contentVersion"],
//         panelizationSummary:
//             PanelizationSummary.fromJson(json["panelizationSummary"]),
//         imageLinks: ImageLinks.fromJson(json["imageLinks"]),
//         language: json["language"],
//         previewLink: json["previewLink"],
//         infoLink: json["infoLink"],
//         canonicalVolumeLink: json["canonicalVolumeLink"],
//       );
//
//   Map<String, dynamic> toJson() => {
//         "title": title,
//         "publishedDate": publishedDate,
//         "industryIdentifiers":
//             List<dynamic>.from(industryIdentifiers.map((x) => x.toJson())),
//         "readingModes": readingModes.toJson(),
//         "pageCount": pageCount,
//         "printType": printType,
//         "categories": List<dynamic>.from(categories.map((x) => x)),
//         "maturityRating": maturityRating,
//         "allowAnonLogging": allowAnonLogging,
//         "contentVersion": contentVersion,
//         "panelizationSummary": panelizationSummary.toJson(),
//         "imageLinks": imageLinks.toJson(),
//         "language": language,
//         "previewLink": previewLink,
//         "infoLink": infoLink,
//         "canonicalVolumeLink": canonicalVolumeLink,
//       };
// }
//
// class ImageLinks {
//   String smallThumbnail;
//   String thumbnail;
//
//   ImageLinks({
//     required this.smallThumbnail,
//     required this.thumbnail,
//   });
//
//   factory ImageLinks.fromRawJson(String str) =>
//       ImageLinks.fromJson(json.decode(str));
//
//   String toRawJson() => json.encode(toJson());
//
//   factory ImageLinks.fromJson(Map<String, dynamic> json) => ImageLinks(
//         smallThumbnail: json["smallThumbnail"],
//         thumbnail: json["thumbnail"],
//       );
//
//   Map<String, dynamic> toJson() => {
//         "smallThumbnail": smallThumbnail,
//         "thumbnail": thumbnail,
//       };
// }
//
// class IndustryIdentifier {
//   String type;
//   String identifier;
//
//   IndustryIdentifier({
//     required this.type,
//     required this.identifier,
//   });
//
//   factory IndustryIdentifier.fromRawJson(String str) =>
//       IndustryIdentifier.fromJson(json.decode(str));
//
//   String toRawJson() => json.encode(toJson());
//
//   factory IndustryIdentifier.fromJson(Map<String, dynamic> json) =>
//       IndustryIdentifier(
//         type: json["type"],
//         identifier: json["identifier"],
//       );
//
//   Map<String, dynamic> toJson() => {
//         "type": type,
//         "identifier": identifier,
//       };
// }
//
// class PanelizationSummary {
//   bool containsEpubBubbles;
//   bool containsImageBubbles;
//
//   PanelizationSummary({
//     required this.containsEpubBubbles,
//     required this.containsImageBubbles,
//   });
//
//   factory PanelizationSummary.fromRawJson(String str) =>
//       PanelizationSummary.fromJson(json.decode(str));
//
//   String toRawJson() => json.encode(toJson());
//
//   factory PanelizationSummary.fromJson(Map<String, dynamic> json) =>
//       PanelizationSummary(
//         containsEpubBubbles: json["containsEpubBubbles"],
//         containsImageBubbles: json["containsImageBubbles"],
//       );
//
//   Map<String, dynamic> toJson() => {
//         "containsEpubBubbles": containsEpubBubbles,
//         "containsImageBubbles": containsImageBubbles,
//       };
// }
//
// class ReadingModes {
//   bool text;
//   bool image;
//
//   ReadingModes({
//     required this.text,
//     required this.image,
//   });
//
//   factory ReadingModes.fromRawJson(String str) =>
//       ReadingModes.fromJson(json.decode(str));
//
//   String toRawJson() => json.encode(toJson());
//
//   factory ReadingModes.fromJson(Map<String, dynamic> json) => ReadingModes(
//         text: json["text"],
//         image: json["image"],
//       );
//
//   Map<String, dynamic> toJson() => {
//         "text": text,
//         "image": image,
//       };
// }
