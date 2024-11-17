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

  factory BooksModel.fromRawJson(String str) =>
      BooksModel.fromJson(json.decode(str));

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
  String id;
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
        id: json["id"],
        etag: json["etag"],
        selfLink: json["selfLink"],
        volumeInfo: VolumeInfo.fromJson(json["volumeInfo"]),
        saleInfo: SaleInfo.fromJson(json["saleInfo"]),
        accessInfo: AccessInfo.fromJson(json["accessInfo"]),
      );

  Map<String, dynamic> toJson() => {
        "kind": kindValues.reverse[kind],
        "id": id,
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
  Epub pdf;
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

  factory AccessInfo.fromRawJson(String str) =>
      AccessInfo.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AccessInfo.fromJson(Map<String, dynamic> json) => AccessInfo(
        country: countryValues.map[json["country"]] ?? Country.US,
        viewability:
            viewabilityValues.map[json["viewability"]] ?? Viewability.NO_PAGES,
        embeddable: json["embeddable"],
        publicDomain: json["publicDomain"],
        textToSpeechPermission:
            textToSpeechPermissionValues.map[json["textToSpeechPermission"]] ??
                TextToSpeechPermission.ALLOWED,
        epub: Epub.fromJson(json["epub"]),
        pdf: Epub.fromJson(json["pdf"]),
        webReaderLink: json["webReaderLink"],
        accessViewStatus:
            accessViewStatusValues.map[json["accessViewStatus"]] ??
                AccessViewStatus.NONE,
        quoteSharingAllowed: json["quoteSharingAllowed"],
      );

  Map<String, dynamic> toJson() => {
        "country": countryValues.reverse[country],
        "viewability": viewabilityValues.reverse[viewability],
        "embeddable": embeddable,
        "publicDomain": publicDomain,
        "textToSpeechPermission":
            textToSpeechPermissionValues.reverse[textToSpeechPermission],
        "epub": epub.toJson(),
        "pdf": pdf.toJson(),
        "webReaderLink": webReaderLink,
        "accessViewStatus": accessViewStatusValues.reverse[accessViewStatus],
        "quoteSharingAllowed": quoteSharingAllowed,
      };
}

enum AccessViewStatus { NONE, SAMPLE }

final accessViewStatusValues = EnumValues(
    {"NONE": AccessViewStatus.NONE, "SAMPLE": AccessViewStatus.SAMPLE});

enum Country { US }

final countryValues = EnumValues({"US": Country.US});

class Epub {
  bool isAvailable;
  String? acsTokenLink;

  Epub({
    required this.isAvailable,
    this.acsTokenLink,
  });

  factory Epub.fromRawJson(String str) => Epub.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Epub.fromJson(Map<String, dynamic> json) => Epub(
        isAvailable: json["isAvailable"],
        acsTokenLink: json["acsTokenLink"],
      );

  Map<String, dynamic> toJson() => {
        "isAvailable": isAvailable,
        "acsTokenLink": acsTokenLink,
      };
}

enum TextToSpeechPermission { ALLOWED }

final textToSpeechPermissionValues =
    EnumValues({"ALLOWED": TextToSpeechPermission.ALLOWED});

enum Viewability { NO_PAGES, PARTIAL }

final viewabilityValues = EnumValues(
    {"NO_PAGES": Viewability.NO_PAGES, "PARTIAL": Viewability.PARTIAL});

enum Kind { BOOKS_VOLUME }

final kindValues = EnumValues({"books#volume": Kind.BOOKS_VOLUME});

class SaleInfo {
  Country country;
  Saleability saleability;
  bool isEbook;
  SaleInfoListPrice? listPrice;
  SaleInfoListPrice? retailPrice;
  String? buyLink;
  List<Offer>? offers;

  SaleInfo({
    required this.country,
    required this.saleability,
    required this.isEbook,
    this.listPrice,
    this.retailPrice,
    this.buyLink,
    this.offers,
  });

  factory SaleInfo.fromRawJson(String str) =>
      SaleInfo.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SaleInfo.fromJson(Map<String, dynamic> json) => SaleInfo(
        country: countryValues.map[json["country"]] ?? Country.US,
        saleability: saleabilityValues.map[json["saleability"]] ??
            Saleability.NOT_FOR_SALE,
        isEbook: json["isEbook"],
        listPrice: json["listPrice"] == null
            ? null
            : SaleInfoListPrice.fromJson(json["listPrice"]),
        retailPrice: json["retailPrice"] == null
            ? null
            : SaleInfoListPrice.fromJson(json["retailPrice"]),
        buyLink: json["buyLink"],
        offers: json["offers"] == null
            ? []
            : List<Offer>.from(json["offers"]!.map((x) => Offer.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "country": countryValues.reverse[country],
        "saleability": saleabilityValues.reverse[saleability],
        "isEbook": isEbook,
        "listPrice": listPrice?.toJson(),
        "retailPrice": retailPrice?.toJson(),
        "buyLink": buyLink,
        "offers": offers == null
            ? []
            : List<dynamic>.from(offers!.map((x) => x.toJson())),
      };
}

class SaleInfoListPrice {
  double amount;
  String currencyCode;

  SaleInfoListPrice({
    required this.amount,
    required this.currencyCode,
  });

  factory SaleInfoListPrice.fromRawJson(String str) =>
      SaleInfoListPrice.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SaleInfoListPrice.fromJson(Map<String, dynamic> json) =>
      SaleInfoListPrice(
        amount: json["amount"]?.toDouble(),
        currencyCode: json["currencyCode"],
      );

  Map<String, dynamic> toJson() => {
        "amount": amount,
        "currencyCode": currencyCode,
      };
}

class Offer {
  int finskyOfferType;
  OfferListPrice listPrice;
  OfferListPrice retailPrice;
  bool? giftable;
  RentalDuration? rentalDuration;

  Offer({
    required this.finskyOfferType,
    required this.listPrice,
    required this.retailPrice,
    this.giftable,
    this.rentalDuration,
  });

  factory Offer.fromRawJson(String str) => Offer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Offer.fromJson(Map<String, dynamic> json) => Offer(
        finskyOfferType: json["finskyOfferType"],
        listPrice: OfferListPrice.fromJson(json["listPrice"]),
        retailPrice: OfferListPrice.fromJson(json["retailPrice"]),
        giftable: json["giftable"],
        rentalDuration: json["rentalDuration"] == null
            ? null
            : RentalDuration.fromJson(json["rentalDuration"]),
      );

  Map<String, dynamic> toJson() => {
        "finskyOfferType": finskyOfferType,
        "listPrice": listPrice.toJson(),
        "retailPrice": retailPrice.toJson(),
        "giftable": giftable,
        "rentalDuration": rentalDuration?.toJson(),
      };
}

class OfferListPrice {
  int amountInMicros;
  String currencyCode;

  OfferListPrice({
    required this.amountInMicros,
    required this.currencyCode,
  });

  factory OfferListPrice.fromRawJson(String str) =>
      OfferListPrice.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory OfferListPrice.fromJson(Map<String, dynamic> json) => OfferListPrice(
        amountInMicros: json["amountInMicros"],
        currencyCode: json["currencyCode"],
      );

  Map<String, dynamic> toJson() => {
        "amountInMicros": amountInMicros,
        "currencyCode": currencyCode,
      };
}

class RentalDuration {
  String unit;
  int count;

  RentalDuration({
    required this.unit,
    required this.count,
  });

  factory RentalDuration.fromRawJson(String str) =>
      RentalDuration.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory RentalDuration.fromJson(Map<String, dynamic> json) => RentalDuration(
        unit: json["unit"],
        count: json["count"],
      );

  Map<String, dynamic> toJson() => {
        "unit": unit,
        "count": count,
      };
}

enum Saleability { FOR_SALE, FOR_SALE_AND_RENTAL, NOT_FOR_SALE }

final saleabilityValues = EnumValues({
  "FOR_SALE": Saleability.FOR_SALE,
  "FOR_SALE_AND_RENTAL": Saleability.FOR_SALE_AND_RENTAL,
  "NOT_FOR_SALE": Saleability.NOT_FOR_SALE
});

class VolumeInfo {
  String title;
  List<String> authors;
  String publisher;
  String publishedDate;
  String? description;
  List<IndustryIdentifier> industryIdentifiers;
  ReadingModes readingModes;
  int? pageCount;
  PrintType printType;
  List<String> categories;
  double? averageRating;
  int? ratingsCount;
  MaturityRating maturityRating;
  bool allowAnonLogging;
  String contentVersion;
  PanelizationSummary panelizationSummary;
  ImageLinks imageLinks;
  Language language;
  String previewLink;
  String infoLink;
  String canonicalVolumeLink;
  String? subtitle;

  VolumeInfo({
    required this.title,
    required this.authors,
    required this.publisher,
    required this.publishedDate,
    this.description,
    required this.industryIdentifiers,
    required this.readingModes,
    this.pageCount,
    required this.printType,
    required this.categories,
    this.averageRating,
    this.ratingsCount,
    required this.maturityRating,
    required this.allowAnonLogging,
    required this.contentVersion,
    required this.panelizationSummary,
    required this.imageLinks,
    required this.language,
    required this.previewLink,
    required this.infoLink,
    required this.canonicalVolumeLink,
    this.subtitle,
  });

  factory VolumeInfo.fromRawJson(String str) =>
      VolumeInfo.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory VolumeInfo.fromJson(Map<String, dynamic> json) => VolumeInfo(
        title: json["title"],
        authors: json["authors"] != null
            ? List<String>.from(json["authors"].map((x) => x))
            : [],
        publisher: json["publisher"] ?? '',
        publishedDate: json["publishedDate"] ?? '',
        description: json["description"],
        industryIdentifiers: List<IndustryIdentifier>.from(
            json["industryIdentifiers"]
                .map((x) => IndustryIdentifier.fromJson(x))),
        readingModes: ReadingModes.fromJson(json["readingModes"]),
        pageCount: json["pageCount"] != null
            ? json["pageCount"] as int
            : 0, // Provide a default value
        printType: printTypeValues.map[json["printType"]]!,
        categories: json["categories"] != null
            ? List<String>.from(json["categories"].map((x) => x))
            : [],
        averageRating: json["averageRating"]?.toDouble(),
        ratingsCount: json["ratingsCount"] != null
            ? json["ratingsCount"] as int
            : 0, // Provide a default value
        maturityRating: maturityRatingValues.map[json["maturityRating"]]!,
        allowAnonLogging: json["allowAnonLogging"],
        contentVersion: json["contentVersion"],
        panelizationSummary:
            PanelizationSummary.fromJson(json["panelizationSummary"]),
        imageLinks: ImageLinks.fromJson(json["imageLinks"]),
        language: languageValues.map[json["language"]]!,
        previewLink: json["previewLink"],
        infoLink: json["infoLink"],
        canonicalVolumeLink: json["canonicalVolumeLink"],
        subtitle: json["subtitle"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "authors": List<dynamic>.from(authors.map((x) => x)),
        "publisher": publisher,
        "publishedDate": publishedDate,
        "description": description,
        "industryIdentifiers":
            List<dynamic>.from(industryIdentifiers.map((x) => x.toJson())),
        "readingModes": readingModes.toJson(),
        "pageCount": pageCount,
        "printType": printTypeValues.reverse[printType],
        "categories": List<dynamic>.from(categories.map((x) => x)),
        "averageRating": averageRating,
        "ratingsCount": ratingsCount,
        "maturityRating": maturityRatingValues.reverse[maturityRating],
        "allowAnonLogging": allowAnonLogging,
        "contentVersion": contentVersion,
        "panelizationSummary": panelizationSummary.toJson(),
        "imageLinks": imageLinks.toJson(),
        "language": languageValues.reverse[language],
        "previewLink": previewLink,
        "infoLink": infoLink,
        "canonicalVolumeLink": canonicalVolumeLink,
        "subtitle": subtitle,
      };
}

class ImageLinks {
  String smallThumbnail;
  String thumbnail;

  ImageLinks({
    required this.smallThumbnail,
    required this.thumbnail,
  });

  factory ImageLinks.fromRawJson(String str) =>
      ImageLinks.fromJson(json.decode(str));

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
  String identifier;

  IndustryIdentifier({
    required this.type,
    required this.identifier,
  });

  factory IndustryIdentifier.fromRawJson(String str) =>
      IndustryIdentifier.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory IndustryIdentifier.fromJson(Map<String, dynamic> json) =>
      IndustryIdentifier(
        type: typeValues.map[json["type"]]!,
        identifier: json["identifier"],
      );

  Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
        "identifier": identifier,
      };
}

enum Type { ISBN_10, ISBN_13, OTHER }

final typeValues = EnumValues(
    {"ISBN_10": Type.ISBN_10, "ISBN_13": Type.ISBN_13, "OTHER": Type.OTHER});

enum Language { EN }

final languageValues = EnumValues({"en": Language.EN});

enum MaturityRating { NOT_MATURE }

final maturityRatingValues =
    EnumValues({"NOT_MATURE": MaturityRating.NOT_MATURE});

class PanelizationSummary {
  bool containsEpubBubbles;
  bool containsImageBubbles;

  PanelizationSummary({
    required this.containsEpubBubbles,
    required this.containsImageBubbles,
  });

  factory PanelizationSummary.fromRawJson(String str) =>
      PanelizationSummary.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PanelizationSummary.fromJson(Map<String, dynamic> json) =>
      PanelizationSummary(
        containsEpubBubbles: json["containsEpubBubbles"],
        containsImageBubbles: json["containsImageBubbles"],
      );

  Map<String, dynamic> toJson() => {
        "containsEpubBubbles": containsEpubBubbles,
        "containsImageBubbles": containsImageBubbles,
      };
}

enum PrintType { BOOK }

final printTypeValues = EnumValues({"BOOK": PrintType.BOOK});

class ReadingModes {
  bool text;
  bool image;

  ReadingModes({
    required this.text,
    required this.image,
  });

  factory ReadingModes.fromRawJson(String str) =>
      ReadingModes.fromJson(json.decode(str));

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
