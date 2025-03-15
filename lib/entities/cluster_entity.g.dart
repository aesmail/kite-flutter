// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cluster_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClusterEntity _$ClusterEntityFromJson(
  Map<String, dynamic> json,
) => ClusterEntity(
  clusterNumber: (json['cluster_number'] as num).toInt(),
  uniqueDomains: (json['unique_domains'] as num).toInt(),
  numberOfTitles: (json['number_of_titles'] as num).toInt(),
  category: json['category'] as String,
  title: json['title'] as String,
  shortSummary: json['short_summary'] as String,
  didYouKnow: json['did_you_know'] as String? ?? "",
  talkingPoints:
      (json['talking_points'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  quote: json['quote'] as String? ?? "",
  quoteAuthor: json['quote_author'] as String? ?? "",
  quoteSourceUrl: json['quote_source_url'] as String? ?? "",
  quoteSourceDomain: json['quote_source_domain'] as String? ?? "",
  location: json['location'] as String? ?? "",
  perspectives:
      (json['perspectives'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList() ??
      const [],
  emoji: json['emoji'] as String? ?? "",
  geopoliticalContext: json['geopolitical_context'] as String? ?? "",
  historicalBackground: json['historical_background'] as String? ?? "",
  internationalReactions:
      json['international_reactions'] == null
          ? const []
          : ClusterEntity._emptyStringToListFromJson(
            json['international_reactions'],
          ),
  humanitarianImpact: json['humanitarian_impact'] as String? ?? "",
  economicImplications: json['economic_implications'] as String? ?? "",
  timeline:
      json['timeline'] == null
          ? const []
          : ClusterEntity._emptyStringToListFromJson(json['timeline']),
  futureOutlook: json['future_outlook'] as String? ?? "",
  keyPlayers: json['key_players'] as List<dynamic>? ?? const [],
  technicalDetails:
      json['technical_details'] == null
          ? const []
          : ClusterEntity._emptyStringToListFromJson(json['technical_details']),
  businessAngleText: json['business_angle_text'] as String? ?? "",
  businessAnglePoints:
      json['business_angle_points'] as List<dynamic>? ?? const [],
  userActionItems:
      json['user_action_items'] == null
          ? const []
          : ClusterEntity._emptyStringToListFromJson(json['user_action_items']),
  scientificSignificance:
      json['scientific_significance'] as List<dynamic>? ?? const [],
  travelAdvisory: json['travel_advisory'] as List<dynamic>? ?? const [],
  destinationHighlights: json['destination_highlights'] as String? ?? "",
  culinarySignificance: json['culinary_significance'] as String? ?? "",
  performanceStatistics:
      json['performance_statistics'] as List<dynamic>? ?? const [],
  leagueStandings: json['league_standings'] as String? ?? "",
  diyTips: json['diy_tips'] as String? ?? "",
  designPrinciples: json['design_principles'] as String? ?? "",
  userExperienceImpact: json['user_experience_impact'] as String? ?? "",
  gameplayMechanics: json['gameplay_mechanics'] as List<dynamic>? ?? const [],
  industryImpact:
      (json['industry_impact'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  technicalSpecifications: json['technical_specifications'] as String? ?? "",
  articles:
      (json['articles'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList() ??
      const [],
  domains:
      (json['domains'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList() ??
      const [],
);

Map<String, dynamic> _$ClusterEntityToJson(ClusterEntity instance) =>
    <String, dynamic>{
      'cluster_number': instance.clusterNumber,
      'unique_domains': instance.uniqueDomains,
      'number_of_titles': instance.numberOfTitles,
      'category': instance.category,
      'title': instance.title,
      'short_summary': instance.shortSummary,
      'did_you_know': instance.didYouKnow,
      'talking_points': instance.talkingPoints,
      'quote': instance.quote,
      'quote_author': instance.quoteAuthor,
      'quote_source_url': instance.quoteSourceUrl,
      'quote_source_domain': instance.quoteSourceDomain,
      'location': instance.location,
      'perspectives': instance.perspectives,
      'emoji': instance.emoji,
      'geopolitical_context': instance.geopoliticalContext,
      'historical_background': instance.historicalBackground,
      'international_reactions': instance.internationalReactions,
      'humanitarian_impact': instance.humanitarianImpact,
      'economic_implications': instance.economicImplications,
      'timeline': instance.timeline,
      'future_outlook': instance.futureOutlook,
      'key_players': instance.keyPlayers,
      'technical_details': instance.technicalDetails,
      'business_angle_text': instance.businessAngleText,
      'business_angle_points': instance.businessAnglePoints,
      'user_action_items': instance.userActionItems,
      'scientific_significance': instance.scientificSignificance,
      'travel_advisory': instance.travelAdvisory,
      'destination_highlights': instance.destinationHighlights,
      'culinary_significance': instance.culinarySignificance,
      'performance_statistics': instance.performanceStatistics,
      'league_standings': instance.leagueStandings,
      'diy_tips': instance.diyTips,
      'design_principles': instance.designPrinciples,
      'user_experience_impact': instance.userExperienceImpact,
      'gameplay_mechanics': instance.gameplayMechanics,
      'industry_impact': instance.industryImpact,
      'technical_specifications': instance.technicalSpecifications,
      'articles': instance.articles,
      'domains': instance.domains,
    };
