import 'DbRaceResult.dart';

class DbRace {
  bool cancelled;
  List<DbRaceResult> results;

  DbRace({this.cancelled, this.results});

  static List<DbRace> listFromJson(List<dynamic> parsedJson) {
    int count = (parsedJson != null ? parsedJson.length : 0);
    List<DbRace> races = new List<DbRace>();
    for (var i = 0; i < count; i++) {
      races.add(DbRace.fromJson(parsedJson[i]));
    }
    return races;
  }

  factory DbRace.fromJson(Map<String, dynamic> parsedJson) {
    return DbRace(
      cancelled: (parsedJson["cancelled"] == 1),
      results: DbRaceResult.listFromJson(parsedJson["results"])
    );
  }
}
