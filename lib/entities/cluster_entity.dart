import 'package:json_annotation/json_annotation.dart';
import 'package:kite/models/cluster.dart';

part 'cluster_entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ClusterEntity {
  ClusterEntity({
    required this.clusterNumber,
    required this.uniqueDomains,
    required this.numberOfTitles,
    required this.category,
    required this.title,
    required this.shortSummary,
    this.didYouKnow = "",
    this.talkingPoints = const [],
    this.quote = "",
    this.quoteAuthor = "",
    this.quoteSourceUrl = "",
    this.quoteSourceDomain = "",
    this.location = "",
    this.perspectives = const [],
    this.emoji = "",
    this.geopoliticalContext = "",
    this.historicalBackground = "",
    this.internationalReactions = const [],
    this.humanitarianImpact = "",
    this.economicImplications = "",
    this.timeline = const [],
    this.futureOutlook = "",
    this.keyPlayers = const [],
    this.technicalDetails = const [],
    this.businessAngleText = "",
    this.businessAnglePoints = const [],
    this.userActionItems = const [],
    this.scientificSignificance = const [],
    this.travelAdvisory = const [],
    this.destinationHighlights = "",
    this.culinarySignificance = "",
    this.performanceStatistics = const [],
    this.leagueStandings = "",
    this.diyTips = "",
    this.designPrinciples = "",
    this.userExperienceImpact = const [],
    this.gameplayMechanics = const [],
    this.industryImpact = const [],
    this.technicalSpecifications = "",
    this.articles = const [],
    this.domains = const [],
  });

  final int clusterNumber;
  final int uniqueDomains;
  final int numberOfTitles;
  final String category;
  final String title;
  final String shortSummary;
  final String didYouKnow;
  final List<String> talkingPoints;
  final String quote;
  final String quoteAuthor;
  final String quoteSourceUrl;
  final String quoteSourceDomain;
  final String location;
  final List<Map> perspectives;
  final String emoji;
  final String geopoliticalContext;
  final String historicalBackground;
  @JsonKey(fromJson: _emptyStringToListFromJson)
  final List<String> internationalReactions;
  final String humanitarianImpact;
  final String economicImplications;
  @JsonKey(fromJson: _emptyStringToListFromJson)
  final List<String> timeline;
  final String futureOutlook;
  final List keyPlayers;
  @JsonKey(fromJson: _emptyStringToListFromJson)
  final List<String> technicalDetails;
  final String businessAngleText;
  final List<String> businessAnglePoints;
  @JsonKey(fromJson: _emptyStringToListFromJson)
  final List<String> userActionItems;
  final List<String> scientificSignificance;
  final List travelAdvisory;
  final String destinationHighlights;
  final String culinarySignificance;
  final List<String> performanceStatistics;
  final String leagueStandings;
  final String diyTips;
  final String designPrinciples;
  @JsonKey(fromJson: _emptyStringToListFromJson)
  final List<String> userExperienceImpact;
  final List gameplayMechanics;
  final List<String> industryImpact;
  final String technicalSpecifications;
  final List<Map> articles;
  final List<Map> domains;

  factory ClusterEntity.fromJson(Map<String, dynamic> json) =>
      _$ClusterEntityFromJson(json);

  Map<String, dynamic> toJson() => _$ClusterEntityToJson(this);

  static List<String> _emptyStringToListFromJson(dynamic json) {
    if (json is List) {
      return List<String>.from(json.map((item) => item.toString()));
    }
    return [];
  }

  Cluster toCluster() {
    return Cluster(
      clusterNumber: clusterNumber,
      uniqueDomains: uniqueDomains,
      numberOfTitles: numberOfTitles,
      category: category,
      title: title,
      shortSummary: shortSummary,
      didYouKnow: didYouKnow,
      talkingPoints: talkingPoints,
      quote: quote,
      quoteAuthor: quoteAuthor,
      quoteSourceUrl: quoteSourceUrl,
      quoteSourceDomain: quoteSourceDomain,
      location: location,
      perspectives: perspectives,
      emoji: emoji,
      geopoliticalContext: geopoliticalContext,
      historicalBackground: historicalBackground,
      internationalReactions: internationalReactions,
      humanitarianImpact: humanitarianImpact,
      economicImplications: economicImplications,
      timeline: timeline,
      futureOutlook: futureOutlook,
      keyPlayers: keyPlayers,
      technicalDetails: technicalDetails,
      businessAngleText: businessAngleText,
      businessAnglePoints: businessAnglePoints,
      userActionItems: userActionItems,
      scientificSignificance: scientificSignificance,
      travelAdvisory: travelAdvisory,
      destinationHighlights: destinationHighlights,
      culinarySignificance: culinarySignificance,
      performanceStatistics: performanceStatistics,
      leagueStandings: leagueStandings,
      diyTips: diyTips,
      designPrinciples: designPrinciples,
      userExperienceImpact: userExperienceImpact,
      gameplayMechanics: gameplayMechanics,
      industryImpact: industryImpact,
      technicalSpecifications: technicalSpecifications,
      articles: articles,
      domains: domains,
    );
  }
}
