
import 'package:lookaround/model/User.dart';
import 'package:mongo_dart/mongo_dart.dart';

class Store {
  Db db = new Db("mongodb://142.93.163.148:27017/Api");

Store(){

}


void openConnection() async {
 await db.open();
}

Future <List<User>> getUsers(){
  openConnection();
}
}