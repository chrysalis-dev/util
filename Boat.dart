import 'package:untitled/models/database/DbBoat.dart';

class Boat {
  int boatID;
  String helmName;
  String crewName;
  int py;
  String boatClass;

  Boat(int id, String helmName, String crewName, int py, String boatClass) {
    this.boatID = id;
    this.helmName = boatClass;
    this.helmName = helmName;
    this.crewName = crewName;
    this.py = py;
  }

  factory Boat.fromDbObject(DbBoat boat) {
    return Boat(
        boat.sailNo, boat.helmName, boat.crewName, boat.py, boat.className);
  }

  String toString() {
    return "Boat with id ${this.boatID}, helmed by ${this.helmName}";
  }
}
