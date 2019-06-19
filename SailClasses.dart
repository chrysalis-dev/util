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

  String toString() {
    return "Competion ${this.name} starts on ${this.startDate} and ends on ${this.endDate}. It has ${this.races.length} races";
  }
}

class Boat {
  int boatID;
  String helmName;
  String crewName;
  int pY;
  String boatClass;

  Boat(int id, String helmName, String crewName, int py, String boatClass) {
    this.boatID = id;
    this.helmName = boatClass;
    this.helmName = helmName;
    this.crewName = crewName;
    this.pY = py;
  }

  String toString() {
    return "Boat with id ${this.boatID}, helmed by ${this.helmName}";
  }
}


class Race {
  int raceID;
  DateTime raceDate;
  List<RaceResult> results = new List<RaceResult>();

  Race(int id, DateTime date) {
    this.raceID = id;
    this.raceDate = date;
  }

  String toString() {
    return "This is a Race with id:${this.raceID}, starting on ${this.raceDate.toString()}";
  }
}

class RaceResult {
  int boatID;
  int rank;
  int elapsedTime;
  int laps;
  int correctedTime;
  int points;
  String specialMentions;

  RaceResult(int id, int rank, int elapsed, int laps, int corrected, int points,
      String mentions) {
    this.boatID = id;
    this.rank = rank;
    this.elapsedTime = elapsed;
    this.laps = laps;
    this.correctedTime = corrected;
    this.points = points;
    this.specialMentions = mentions;
  }

  String toString() {
    return "The boat with id ${this.boatID} finished on rank ${this.rank} with ${this.points} points";
  }
}

void main() {
  print(Race(1, DateTime.now()));
}
