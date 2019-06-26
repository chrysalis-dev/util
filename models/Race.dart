import 'package:untitled/models/database/DbRace.dart';

import 'RaceResult.dart';
import 'package:uuid_enhanced/uuid.dart' show Uuid;
import 'package:uuid_enhanced/uuid_util.dart' show UuidUtil;

class Race {
  bool cancelled;
  String raceID;
  DateTime raceDate;
  List<RaceResult> results = new List<RaceResult>();

  Race(DateTime date) {
    this.cancelled = false;
    this.raceID = Uuid.randomUuid(random: UuidUtil.cryptoRNG()).toString();
    this.raceDate = date;
  }

  Race.buildRace({this.cancelled, this.raceID, this.raceDate, this.results});

  factory Race.fromDbObject(DbRace race) {
    return Race.buildRace(
      cancelled: race.cancelled,
      raceID: race.id,
      raceDate: race.raceDate,
      results: RaceResult.listFromDbObject(race.results)
    );
  }


  String toString() {
    return "This is a Race with id:${this.raceID}, starting on ${this.raceDate.toString()}";
  }
}
