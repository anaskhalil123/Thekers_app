import 'package:hive/hive.dart';

part 'ThekerClass.g.dart';

@HiveType(typeId: 0)
class ThekerClass {
  @HiveField(0)
  final String name;

  ThekerClass({required this.name});
}

/*
Hive Database (non-structured database): 
Model (Table in the secema)
Box (Table in the Database)
entry (the Document in the Model)
Adapter (the generated class that format and deformat the data from the model)
*/