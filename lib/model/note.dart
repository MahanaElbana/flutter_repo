

import 'package:hive/hive.dart';
part 'note.g.dart';
@HiveType(typeId: 0)
class Note extends HiveObject{

  @HiveField(0)
  String ? description ; 

  @HiveField(1)
  String? content ; 
  
 Note({this.content , this.description}) ; 
}