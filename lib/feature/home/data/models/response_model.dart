import 'package:json_annotation/json_annotation.dart';

part 'response_model.g.dart';

@JsonSerializable(explicitToJson: true)
class CatApiResponse {
  final List<CatImage> breeds;

  CatApiResponse({required this.breeds});

  factory CatApiResponse.fromJson(List<dynamic> json) =>
      CatApiResponse(breeds: json.map((e) => CatImage.fromJson(e as Map<String, dynamic>)).toList());

  Map<String, dynamic> toJson() => {
    'breeds': breeds.map((e) => e.toJson()).toList(),
  };
}

@JsonSerializable(explicitToJson: true)
class CatImage {
  final String id;
  final String url;
  final int width;
  final int height;
  final List<CatBreed> breeds;

  CatImage({
    required this.id,
    required this.url,
    required this.width,
    required this.height,
    required this.breeds,
  });

  factory CatImage.fromJson(Map<String, dynamic> json) => _$CatImageFromJson(json);
  Map<String, dynamic> toJson() => _$CatImageToJson(this);
}

@JsonSerializable()
class CatBreed {
  final String id;
  final String name;
  final Weight weight;
  final String temperament;
  final String origin;
  final String description;
  @JsonKey(name: 'life_span')
  final String lifeSpan;
  final int indoor;
  final int lap;
  final int adaptability;
  @JsonKey(name: 'affection_level')
  final int affectionLevel;
  @JsonKey(name: 'child_friendly')
  final int childFriendly;
  @JsonKey(name: 'cat_friendly')
  final int catFriendly;
  @JsonKey(name: 'dog_friendly')
  final int dogFriendly;
  @JsonKey(name: 'energy_level')
  final int energyLevel;
  final int grooming;
  @JsonKey(name: 'health_issues')
  final int healthIssues;
  final int intelligence;
  @JsonKey(name: 'shedding_level')
  final int sheddingLevel;
  @JsonKey(name: 'social_needs')
  final int socialNeeds;
  @JsonKey(name: 'stranger_friendly')
  final int strangerFriendly;
  final int vocalisation;
  final int bidability;
  final int experimental;
  final int hairless;
  final int natural;
  final int rare;
  final int rex;
  @JsonKey(name: 'suppressed_tail')
  final int suppressedTail;
  @JsonKey(name: 'short_legs')
  final int shortLegs;
  @JsonKey(name: 'wikipedia_url')
  final String wikipediaUrl;
  final int hypoallergenic;
  @JsonKey(name: 'reference_image_id')
  final String referenceImageId;
  @JsonKey(name: 'cfa_url')
  final String cfaUrl;
  @JsonKey(name: 'vetstreet_url')
  final String vetstreetUrl;
  @JsonKey(name: 'vcahospitals_url')
  final String vcahospitalsUrl;

  CatBreed({
    required this.id,
    required this.name,
    required this.weight,
    required this.temperament,
    required this.origin,
    required this.description,
    required this.lifeSpan,
    required this.indoor,
    required this.lap,
    required this.adaptability,
    required this.affectionLevel,
    required this.childFriendly,
    required this.catFriendly,
    required this.dogFriendly,
    required this.energyLevel,
    required this.grooming,
    required this.healthIssues,
    required this.intelligence,
    required this.sheddingLevel,
    required this.socialNeeds,
    required this.strangerFriendly,
    required this.vocalisation,
    required this.bidability,
    required this.experimental,
    required this.hairless,
    required this.natural,
    required this.rare,
    required this.rex,
    required this.suppressedTail,
    required this.shortLegs,
    required this.wikipediaUrl,
    required this.hypoallergenic,
    required this.referenceImageId,
    required this.cfaUrl,
    required this.vetstreetUrl,
    required this.vcahospitalsUrl,
  });

  factory CatBreed.fromJson(Map<String, dynamic> json) => _$CatBreedFromJson(json);
  Map<String, dynamic> toJson() => _$CatBreedToJson(this);
}

@JsonSerializable()
class Weight {
  final String imperial;
  final String metric;

  Weight({required this.imperial, required this.metric});

  factory Weight.fromJson(Map<String, dynamic> json) => _$WeightFromJson(json);
  Map<String, dynamic> toJson() => _$WeightToJson(this);
}
