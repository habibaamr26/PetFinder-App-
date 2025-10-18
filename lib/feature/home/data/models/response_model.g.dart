// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatApiResponse _$CatApiResponseFromJson(Map<String, dynamic> json) =>
    CatApiResponse(
      id: json['id'] as String,
      url: json['url'] as String,
      width: (json['width'] as num).toInt(),
      height: (json['height'] as num).toInt(),
      breeds: (json['breeds'] as List<dynamic>)
          .map((e) => CatBreed.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CatApiResponseToJson(CatApiResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'width': instance.width,
      'height': instance.height,
      'breeds': instance.breeds.map((e) => e.toJson()).toList(),
    };

CatBreed _$CatBreedFromJson(Map<String, dynamic> json) => CatBreed(
  id: json['id'] as String,
  name: json['name'] as String,
  weight: Weight.fromJson(json['weight'] as Map<String, dynamic>),
  temperament: json['temperament'] as String,
  origin: json['origin'] as String,
  description: json['description'] as String,
  lifeSpan: json['life_span'] as String,
  indoor: (json['indoor'] as num).toInt(),
  lap: (json['lap'] as num).toInt(),
  adaptability: (json['adaptability'] as num).toInt(),
  affectionLevel: (json['affection_level'] as num).toInt(),
  childFriendly: (json['child_friendly'] as num).toInt(),
  catFriendly: (json['cat_friendly'] as num).toInt(),
  dogFriendly: (json['dog_friendly'] as num).toInt(),
  energyLevel: (json['energy_level'] as num).toInt(),
  grooming: (json['grooming'] as num).toInt(),
  healthIssues: (json['health_issues'] as num).toInt(),
  intelligence: (json['intelligence'] as num).toInt(),
  sheddingLevel: (json['shedding_level'] as num).toInt(),
  socialNeeds: (json['social_needs'] as num).toInt(),
  strangerFriendly: (json['stranger_friendly'] as num).toInt(),
  vocalisation: (json['vocalisation'] as num).toInt(),
  bidability: (json['bidability'] as num).toInt(),
  experimental: (json['experimental'] as num).toInt(),
  hairless: (json['hairless'] as num).toInt(),
  natural: (json['natural'] as num).toInt(),
  rare: (json['rare'] as num).toInt(),
  rex: (json['rex'] as num).toInt(),
  suppressedTail: (json['suppressed_tail'] as num).toInt(),
  shortLegs: (json['short_legs'] as num).toInt(),
  wikipediaUrl: json['wikipedia_url'] as String,
  hypoallergenic: (json['hypoallergenic'] as num).toInt(),
  referenceImageId: json['reference_image_id'] as String,
  cfaUrl: json['cfa_url'] as String,
  vetstreetUrl: json['vetstreet_url'] as String,
  vcahospitalsUrl: json['vcahospitals_url'] as String,
);

Map<String, dynamic> _$CatBreedToJson(CatBreed instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'weight': instance.weight,
  'temperament': instance.temperament,
  'origin': instance.origin,
  'description': instance.description,
  'life_span': instance.lifeSpan,
  'indoor': instance.indoor,
  'lap': instance.lap,
  'adaptability': instance.adaptability,
  'affection_level': instance.affectionLevel,
  'child_friendly': instance.childFriendly,
  'cat_friendly': instance.catFriendly,
  'dog_friendly': instance.dogFriendly,
  'energy_level': instance.energyLevel,
  'grooming': instance.grooming,
  'health_issues': instance.healthIssues,
  'intelligence': instance.intelligence,
  'shedding_level': instance.sheddingLevel,
  'social_needs': instance.socialNeeds,
  'stranger_friendly': instance.strangerFriendly,
  'vocalisation': instance.vocalisation,
  'bidability': instance.bidability,
  'experimental': instance.experimental,
  'hairless': instance.hairless,
  'natural': instance.natural,
  'rare': instance.rare,
  'rex': instance.rex,
  'suppressed_tail': instance.suppressedTail,
  'short_legs': instance.shortLegs,
  'wikipedia_url': instance.wikipediaUrl,
  'hypoallergenic': instance.hypoallergenic,
  'reference_image_id': instance.referenceImageId,
  'cfa_url': instance.cfaUrl,
  'vetstreet_url': instance.vetstreetUrl,
  'vcahospitals_url': instance.vcahospitalsUrl,
};

Weight _$WeightFromJson(Map<String, dynamic> json) => Weight(
  imperial: json['imperial'] as String,
  metric: json['metric'] as String,
);

Map<String, dynamic> _$WeightToJson(Weight instance) => <String, dynamic>{
  'imperial': instance.imperial,
  'metric': instance.metric,
};
