import 'package:untitled/models/database/DbCompetition.dart';

import 'Race.dart';

class Competition {
  String name;
  DateTime startDate;
  DateTime endDate;
  List<Race> races = new List<Race>();

  Competition(String name, DateTime start, DateTime end) {
    this.name = name;
    this.startDate = start;
    this.endDate = end;
  }

  factory Competition.fromDbObject(DbCompetition competition) {
    return Competition(
        competition.name, competition.startDate, competition.endDate);
  }

  String toString() {
    return "\n" +
        " Competion ${this.name}\n" +
        " Starts on ${this.startDate}\n" +
        " Ends on ${this.endDate}\n" +
        " It has ${this.races.length} races\n";
  }
}
