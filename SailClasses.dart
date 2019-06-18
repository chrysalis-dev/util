class Competition {
  String Name;
  DateTime StartDate;
  DateTime EndDate;
  List<Race> Races = new List<Race>();

  Competiton(String name, DateTime start, DateTime end) {
    this.Name = name;
    this.StartDate = start;
    this.EndDate = end;
  }

  String toString() {
    return "Competion ${this.Name} starts on ${this.StartDate} and ends on ${this.EndDate}. It has ${this.Races.length} races";
  }
}

class Boat {
  int BoatID;
  String HelmName;
  String CrewName;
  int PY;
  String BoatClass;

  Boat(int id, String helmName, String crewName, int py, String boatClass) {
    this.BoatID = id;
    this.BoatClass = boatClass;
    this.HelmName = helmName;
    this.CrewName = crewName;
    this.PY = py;
  }

  String toString() {
    return "Boat with id ${this.BoatID}, helmed by ${this.HelmName}";
  }
}

class Race {
  int RaceID;
  DateTime RaceDate;
  List<RaceResult> Results = new List<RaceResult>();

  Race(int id, DateTime date) {
    this.RaceID = id;
    this.RaceDate = date;
  }

  String toString() {
    return "This is a Race with id:${this.RaceID}, starting on ${this.RaceDate.toString()}";
  }
}

class RaceResult {
  int BoatID;
  int Rank;
  int ElapsedTime;
  int Laps;
  int CorrectedTime;
  int Points;
  String SpecialMentions;

  RaceResult(int id, int rank, int elapsed, int laps, int corrected, int points,
      String mentions) {
    this.BoatID = id;
    this.Rank = rank;
    this.ElapsedTime = elapsed;
    this.Laps = laps;
    this.CorrectedTime = corrected;
    this.Points = points;
    this.SpecialMentions = mentions;
  }

  String toString() {
    return "The boat with id ${this.BoatID} finished on rank ${this.Rank} with ${this.Points} points";
  }
}

void main() {
  print(Race(1, DateTime.now()));
}
