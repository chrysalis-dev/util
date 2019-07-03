import 'db_race_result.dart';

enum RaceType { normal, handicap }

class DbRace {
  bool cancelled;
  String id;
  DateTime raceDate;
  List<DbRaceResult> results;
  int laps;
  RaceType type;

  DbRace(
      {this.cancelled,
      this.id,
      this.raceDate,
      this.results,
      this.laps,
      this.type});

  static List<DbRace> listFromJson(List<dynamic> parsedJson) {
    int count = (parsedJson != null ? parsedJson.length : 0);
    List<DbRace> races = new List<DbRace>();
    for (var i = 0; i < count; i++) {
      races.add(DbRace.fromJson(parsedJson[i]));
    }
    return races;
  }

  factory DbRace.fromJson(Map<String, dynamic> parsedJson) {
    RaceType raceType;
    switch (parsedJson["type"]) {
      case 0:
        raceType = RaceType.normal;
        break;
      case 1:
        raceType = RaceType.handicap;
        break;
    }

    return DbRace(
        cancelled: (parsedJson["cancelled"] == 1),
        raceDate: DateTime.parse(parsedJson["raceDate"]),
        id: (parsedJson["id"]),
        results: DbRaceResult.listFromJson(parsedJson["results"]),
        laps: parsedJson["laps"],
        type: raceType);
  }
}
